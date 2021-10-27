from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from .models import Task, Animals
from django.views.generic.list import ListView
from django.views.generic.edit import CreateView, UpdateView, DeleteView, FormView
from django.urls import reverse_lazy
from django.contrib.auth.mixins import LoginRequiredMixin
from datetime import date

def home(request):
    return render(request, 'muninn/home.html')

@login_required #must be logged in to see
def petshop(request):
    allAnimals = Animals.objects.all()
    return render(request, 'muninn/pet_shop.html', {'animalList': allAnimals,'level':0})

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
            return redirect('muninn-dashboard')
        except Exception :
            return redirect('muninn-dashboard')
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['tasks'] = context['tasks'].filter(user=self.request.user)
        context['count'] = context['tasks'].filter(complete=False).count()

        search_input = self.request.GET.get('search-area') or ''
        if search_input:
            context['tasks'] = context['tasks'].filter(
                title__contains=search_input)

        context['search_input'] = search_input

        return context

