from .models import Task, Animals, MuninnDailyHabits, MuninnMasterHabits, MuninnPlayer
from datetime import date, timedelta


fakeDate = date.today() + timedelta(days=6)

def dailyReset(request):
    queriedUser = MuninnPlayer.objects.get(playerid=request.user.id)
    if queriedUser.last_day_updates < fakeDate:
        habits = MuninnMasterHabits.objects.filter(user=request.user, active=1)
        for habit in habits.iterator():
            form2=MuninnDailyHabits(title=habit.title, date=fakeDate, user=request.user, master_habit=habit)
            form2.save()
        queriedUser.last_day_updates = fakeDate
        queriedUser.total_points = queriedUser.total_points+queriedUser.daily_points
        queriedUser.daily_points = 0
        queriedUser.save()


def levelForPlayer(request):
    queriedUser = MuninnPlayer.objects.get(playerid=request.user.id)
    pointsForLevel = queriedUser.total_points+queriedUser.daily_points
    if pointsForLevel <= 75:
        level = "Level 1"
    elif pointsForLevel > 75 and pointsForLevel <= 175:
        level = "Level 2"
    elif pointsForLevel > 175 and pointsForLevel <= 300:
        level = "Level 3"
    elif pointsForLevel > 300 and pointsForLevel <= 450:
        level = "Level 4"
    elif pointsForLevel > 450 and pointsForLevel <= 625:
        level = "Level 5"
    elif pointsForLevel > 625 and pointsForLevel <= 825:
        level = "Level 6"
    elif pointsForLevel > 825 and pointsForLevel <= 1050:
        level = "Level 7"
    elif pointsForLevel > 1050 and pointsForLevel <= 1300:
        level = "Level 8"
    elif pointsForLevel > 1300 and pointsForLevel <= 1575:
        level = "Level 9"
    elif pointsForLevel > 1575 and pointsForLevel <= 1875:
        level = "Level 10"
    return level