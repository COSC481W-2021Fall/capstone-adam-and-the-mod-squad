from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from .models import Task, Animals, MuninnDailyHabits, MuninnMasterHabits, MuninnPlayer
from django.views.generic.list import ListView
from django.views.generic.edit import CreateView, UpdateView, DeleteView, FormView
from django.urls import reverse_lazy
from django.contrib.auth.mixins import LoginRequiredMixin
from datetime import date
import traceback
import numpy as np


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
            #handling the tasks
            if 'addTask' in request.POST:
                form = Task(title=request.POST.get('task'), created=date.today(), user=request.user)
                form.save()
                self.calculate(request)
                print(levelForPlayer(request))
                
            if 'completeTask' in request.POST:
                print(request.POST)
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
                #Master List
                form1 = MuninnMasterHabits(title=request.POST.get('habit'), created=date.today(), user=request.user)
                form1.save()
                print(form1.id)
                #Daily List
                
                form2=MuninnDailyHabits(title=request.POST.get('habit'), date=date.today(), user=request.user, master_habit=form1)
                print(form1.id)
                form2.save()
                self.calculate(request)
            if 'completeHabit' in request.POST:
                print(request.POST)
                queriedTask = MuninnDailyHabits.objects.get(pk=request.POST.get('hidden-completeHabit'))
                if queriedTask.complete == True:
                    queriedTask.complete = False
                else:
                    queriedTask.complete = True
                queriedTask.save()
                self.calculate(request)

            if 'deleteHabit' in request.POST:
                    queriedDailyHabit = MuninnDailyHabits.objects.get(pk=request.POST.get('delete-hidden-habit'))
                    queriedDailyHabit.master_habit.delete()
                    #queriedMasterHabit = MuninnMasterHabits.objects.get(id=request.POST.get(queriedDailyHabit.master_habit.id))
                    queriedDailyHabit.delete()
                    self.calculate(request)
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
    
    def calculate(self, request):
        print("User name: ",request.user)
        print("User ID: ", str(request.user.id))
        print("Date today: ",str(date.today()),"\n")
        allTasks = Task.objects.filter(user=request.user, created=date.today())
        print(allTasks)
        allHabits = MuninnDailyHabits.objects.filter(user=request.user, date=date.today())
        allCompleteTasks = Task.objects.filter(user=request.user, created=date.today(), complete=1)
        allCompleteHabits = MuninnDailyHabits.objects.filter(user=request.user, date=date.today(), complete=1)
        numOfTasksHabits = len(allTasks) + len(allHabits)
        numOfCompleteTasksHabits = len(allCompleteTasks) + len(allCompleteHabits)
        percentage = round(numOfCompleteTasksHabits / numOfTasksHabits * 100)
        todays_tasksAndHabits = len(allTasks)+len(allHabits)
        completedtodays_tasksAndHabits = len(allCompleteTasks) + len(allCompleteHabits)
        print("Number of tasks TODAY: "+str(len(allTasks)))
        print("Number of habits TODAY: "+str(len(allHabits)))
        print("Number of completed tasks TODAY: "+str(len(allCompleteTasks)))
        print("Number of completed habits: "+str(len(allCompleteHabits)))
        print(str(completedtodays_tasksAndHabits),"\ ",str(todays_tasksAndHabits))
        print(percentage)
        queriedUser = MuninnPlayer.objects.get(playerid=request.user.id)
        queriedUser.daily_points = percentage
        queriedUser.save()

@login_required
def levelForPlayer(request):
    queriedUser = MuninnPlayer.objects.get(playerid=request.user.id)
    pointsForLevel = queriedUser.total_points+queriedUser.daily_points
    level = "Level " + str(int((np.log(pointsForLevel))/((300/pointsForLevel) + 1)+1))
    # level = "Level "+str(int(np.log(pointsForLevel) - 1))

    # if pointsForLevel <= 75:
    #     level = "Level 1"
    # elif pointsForLevel > 75 and pointsForLevel <= 175:
    #     level = "Level 2"
    # elif pointsForLevel > 175 and pointsForLevel <= 300:
    #     level = "Level 3"
    # elif pointsForLevel > 300 and pointsForLevel <= 450:
    #     level = "Level 4"
    # elif pointsForLevel > 450 and pointsForLevel <= 625:
    #     level = "Level 5"
    # elif pointsForLevel > 625 and pointsForLevel <= 825:
    #     level = "Level 6"
    # elif pointsForLevel > 825 and pointsForLevel <= 1050:
    #     level = "Level 7"
    # elif pointsForLevel > 1050 and pointsForLevel <= 1300:
    #     level = "Level 8"
    # elif pointsForLevel > 1300 and pointsForLevel <= 1575:
    #     level = "Level 9"
    # elif pointsForLevel > 1575 and pointsForLevel <= 1875:
    #     level = "Level 10"
    return level