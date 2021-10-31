from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from muninn.models import MuninnPlayer
from datetime import date

def register(request):
    if request.method == "POST":
        form = UserCreationForm(request.POST)
        if form.is_valid():
            player = form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'Account created for {username}!')
            player_form = MuninnPlayer(total_points=0, daily_points=0, money=0, playerid=player, last_day_updates=date.today())
            player_form.save()
            return redirect('muninn-dashboard')       
    else:
        form = UserCreationForm()
    return render(request, 'users/register.html', {'form': form})


# class MuninnPlayer(models.Model):
#     points = models.IntegerField()
#     money = models.IntegerField()
#     playerid = models.OneToOneField(User, models.DO_NOTHING, db_column='playerID_id')  # Field name made lowercase.
#     last_day_updates = models.DateField()