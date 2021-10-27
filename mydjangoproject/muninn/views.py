from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from .models import Task, Animals, MuninnDailyHabits, MuninnMasterHabits
from django.views.generic.list import ListView
from django.views.generic.edit import CreateView, UpdateView, DeleteView, FormView
from django.urls import reverse_lazy
from django.contrib.auth.mixins import LoginRequiredMixin
from datetime import date
import traceback


def home(request):
    return render(request, 'muninn/home.html')

def petshop(request):
    allAnimals = Animals.objects.all()
    return render(request, 'muninn/pet_shop.html', {'animalList': allAnimals})

def about(request):
    return render(request, 'muninn/about.html')

def roost(request):
    return render(request, 'muninn/roost.html')

def usersettings(request):
    return render(request, 'muninn/user_settings.html')

def friends(request):
    return render(request, 'muninn/friends.html')

def statistics(request):
    return render(request, 'muninn/statistics.html')


class dashboard(LoginRequiredMixin, ListView):
    model = Task
    context_object_name = 'tasks'
    def post(self, request, *args, **kwargs):
        try:
            #handling the tasks
            if 'addTask' in request.POST:
                form = Task(title=request.POST.get('task'), created=date.today(), user=request.user)
                form.save()
                
            if 'completeTask' in request.POST:
                print(request.POST)
                queriedTask = Task.objects.get(pk=request.POST.get('hidden-completeTask'))
                if queriedTask.complete == 1:
                    queriedTask.complete = 0
                else:
                    queriedTask.complete = 1
                queriedTask.save()
            if 'deleteTask' in request.POST:
                    queriedTask = Task.objects.get(pk=request.POST.get('delete-hidden'))
                    queriedTask.delete()
                    return redirect('muninn-dashboard')


            #handling the Habits       
            if 'addHabit' in request.POST:
                #Master List
                form1 = MuninnMasterHabits(title=request.POST.get('habit'), created=date.today(), user=request.user)
                form1.save()
                print(form1.id)
                #Daily List
                
                form2=MuninnDailyHabits(title=request.POST.get('habit'), date=date.today(), user=request.user, master_habit=form1)
                print(form1.id)
                form2.save()
            if 'completeHabit' in request.POST:
                print(request.POST)
                queriedTask = MuninnDailyHabits.objects.get(pk=request.POST.get('hidden-completeHabit'))
                if queriedTask.complete == True:
                    queriedTask.complete = False
                else:
                    queriedTask.complete = True
                queriedTask.save()
            if 'deleteHabit' in request.POST:
                    queriedDailyHabit = MuninnDailyHabits.objects.get(pk=request.POST.get('delete-hidden-habit'))
                    queriedDailyHabit.master_habit.delete()
                    #queriedMasterHabit = MuninnMasterHabits.objects.get(id=request.POST.get(queriedDailyHabit.master_habit.id))
                    queriedDailyHabit.delete()
                    return redirect('muninn-dashboard')
            return redirect('muninn-dashboard')
        except Exception :
            print(traceback.format_exc())
            return redirect('muninn-dashboard')
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['tasks'] = context['tasks'].filter(user=self.request.user)
        context['count'] = context['tasks'].filter(complete=False).count()
        context['habits'] = MuninnDailyHabits.objects.filter(user_id__exact=self.request.user.id)
        search_input = self.request.GET.get('search-area') or ''
        if search_input:
            context['tasks'] = context['tasks'].filter(
                title__contains=search_input)

        context['search_input'] = search_input

        return context

