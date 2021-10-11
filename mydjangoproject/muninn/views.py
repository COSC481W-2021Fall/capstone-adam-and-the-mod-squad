from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from .models import Task
from django.views.generic.list import ListView
from django.views.generic.edit import CreateView, UpdateView, DeleteView, FormView
from django.urls import reverse_lazy
from django.contrib.auth.mixins import LoginRequiredMixin
from datetime import date

def home(request):
    return render(request, 'muninn/home.html')

class dashboard(LoginRequiredMixin, ListView):
    model = Task
    context_object_name = 'tasks'
    def post(self, request, *args, **kwargs):
        if 'addTask' in request.POST:
            form = Task(title=request.POST.get('task'), created=date.today(), user=request.user)
            form.save()
        if 'completeTask' in request.POST:
            print(request.POST.get(id))
            queriedTask = Task.objects.get(pk=7) # <- id passed thru will change with frontend
            queriedTask.complete = 1
            queriedTask.save()
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