from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from .models import Task, Animals, MuninnDailyHabits, MuninnMasterHabits, MuninnPlayer
from django.views.generic.list import ListView
from django.views.generic.edit import CreateView, UpdateView, DeleteView, FormView
from django.urls import reverse_lazy
from django.contrib.auth.mixins import LoginRequiredMixin
from datetime import date, timedelta
from .functions import dailyReset, levelForPlayer, fakeDate
import traceback
from django.contrib import messages
from django.views.generic import TemplateView
from django.views import View

def home(request):
    return render(request, 'muninn/home.html')

class petshop(LoginRequiredMixin, View):
    template_name = 'templates/muninn/pet_shop.html'
    def post(self, request, *args, **kwargs):
        return redirect('muninn-pet-shop')
    def get(self, request):
        allAnimals = Animals.objects.all()
        level = levelForPlayer(self.request)
        queriedUser = MuninnPlayer.objects.get(playerid=request.user.id)
        return render(self.request, 'muninn/pet_shop.html', {'animalList': allAnimals,'level':level, 'money': queriedUser.money})

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
                if request.POST.get('task'):
                    form = Task(title=request.POST.get('task'), created=fakeDate, user=request.user)
                    form.save()
                    self.calculate(request)
                    
                
            if 'completeTask' in request.POST:
                queriedTask = Task.objects.get(pk=request.POST.get('hidden-completeTask'))
                if queriedTask.complete == 1:
                    queriedTask.complete = 0
                else:
                    queriedTask.complete = 1
                queriedTask.save()
                self.calculate(request)

            if 'deleteTask' in request.POST:
                    queriedTask = Task.objects.get(pk=request.POST.get('delete-hidden'))
                    queriedTask.delete()
                    self.calculate(request)
                    return redirect('muninn-dashboard')
                    
            #handling the Habits       
            if 'addHabit' in request.POST:
                if request.POST.get('habit'):
                    #Master List
                    form1 = MuninnMasterHabits(title=request.POST.get('habit'), created=fakeDate, user=request.user)
                    form1.save()
                    #Daily List
                    
                    form2=MuninnDailyHabits(title=request.POST.get('habit'), date=fakeDate, user=request.user, master_habit=form1)
                    form2.save()
                    self.calculate(request)
            if 'completeHabit' in request.POST:
                queriedTask = MuninnDailyHabits.objects.get(pk=request.POST.get('hidden-completeHabit'))
                if queriedTask.complete == True:
                    queriedTask.complete = False
                else:
                    queriedTask.complete = True
                queriedTask.save()
                self.calculate(request)

            if 'deleteHabit' in request.POST:
                    queriedDailyHabit = MuninnDailyHabits.objects.get(pk=request.POST.get('delete-hidden-habit'))
                    queriedDailyHabit.master_habit.active = 0
                    queriedDailyHabit.master_habit.save()
                    #queriedMasterHabit = MuninnMasterHabits.objects.get(id=request.POST.get(queriedDailyHabit.master_habit.id))
                    queriedDailyHabit.delete()
                    self.calculate(request)
                    return redirect('muninn-dashboard')
            return redirect('muninn-dashboard')
        except Exception :
            print(traceback.format_exc())
            return redirect('muninn-dashboard')
    def get_context_data(self, **kwargs):
        dailyReset(self.request)
        context = super().get_context_data(**kwargs)
        context['tasks'] = context['tasks'].filter(user=self.request.user, created=fakeDate)
        context['count'] = context['tasks'].filter(complete=False).count()
        context['habits'] = MuninnDailyHabits.objects.filter(user_id__exact=self.request.user.id, date=fakeDate)
        search_input = self.request.GET.get('search-area') or ''
        if search_input:
            context['tasks'] = context['tasks'].filter(
                title__contains=search_input)

        context['search_input'] = search_input

        return context
    
    def calculate(self, request):
        allTasks = Task.objects.filter(user=request.user, created=fakeDate)
        allHabits = MuninnDailyHabits.objects.filter(user=request.user, date=fakeDate)
        allCompleteTasks = Task.objects.filter(user=request.user, created=fakeDate, complete=1)
        allCompleteHabits = MuninnDailyHabits.objects.filter(user=request.user, date=fakeDate, complete=1)
        numOfTasksHabits = len(allTasks) + len(allHabits)
        numOfCompleteTasksHabits = len(allCompleteTasks) + len(allCompleteHabits)
        percentage = round(numOfCompleteTasksHabits / numOfTasksHabits * 100)
        queriedUser = MuninnPlayer.objects.get(playerid=request.user.id)
        queriedUser.daily_points = percentage
        queriedUser.save()
