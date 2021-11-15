from .models import Task, Animals, MuninnDailyHabits, MuninnMasterHabits, MuninnPlayer
from datetime import date, timedelta


fakeDate = date.today() + timedelta(days=3)

def dailyReset(request):
    queriedUser = MuninnPlayer.objects.get(playerid=request.user.id)
    if queriedUser.last_day_updates < fakeDate:
        habits = MuninnMasterHabits.objects.filter(user=request.user, active=1)
        for habit in habits.iterator():
            form2=MuninnDailyHabits(title=habit.title, date=fakeDate, user=request.user, master_habit=habit)
            form2.save()
        queriedUser.last_day_updates = fakeDate
        queriedUser.total_points = queriedUser.total_points + queriedUser.daily_points
        queriedUser.money = queriedUser.money + queriedUser.daily_points
        queriedUser.daily_points = 0
        queriedUser.save()


def levelForPlayer(request):
    queriedUser = MuninnPlayer.objects.get(playerid=request.user.id)
    pointsForLevel = queriedUser.total_points+queriedUser.daily_points
    # level = "Level " + str(int((np.log(pointsForLevel))/((300/pointsForLevel) + 1)+1))
    if pointsForLevel <= 75:
        level = 1
    elif pointsForLevel > 75 and pointsForLevel <= 175:
        level = 2
    elif pointsForLevel > 175 and pointsForLevel <= 300:
        level = 3
    elif pointsForLevel > 300 and pointsForLevel <= 450:
        level = 4
    elif pointsForLevel > 450 and pointsForLevel <= 625:
        level = 5
    elif pointsForLevel > 625 and pointsForLevel <= 825:
        level = 6
    elif pointsForLevel > 825 and pointsForLevel <= 1050:
        level = 7
    elif pointsForLevel > 1050 and pointsForLevel <= 1300:
        level = 8
    elif pointsForLevel > 1300 and pointsForLevel <= 1575:
        level = 9
    elif pointsForLevel > 1575 and pointsForLevel <= 1875:
        level = 10

    return level

def pointsTillNextLevel(request):
    queriedUser = MuninnPlayer.objects.get(playerid=request.user.id)
    pointsForLevel = queriedUser.total_points+queriedUser.daily_points
    if pointsForLevel <= 75:
        upper = 75
    elif pointsForLevel > 75 and pointsForLevel <= 175:
        upper = 175
    elif pointsForLevel > 175 and pointsForLevel <= 300:
        upper = 300
    elif pointsForLevel > 300 and pointsForLevel <= 450:
        upper = 450
    elif pointsForLevel > 450 and pointsForLevel <= 625:
        upper = 625
    elif pointsForLevel > 625 and pointsForLevel <= 825:
        upper = 825
    elif pointsForLevel > 825 and pointsForLevel <= 1050:
        upper = 1050
    elif pointsForLevel > 1050 and pointsForLevel <= 1300:
        upper = 1300
    elif pointsForLevel > 1300 and pointsForLevel <= 1575:
        upper = 1575
    elif pointsForLevel > 1575 and pointsForLevel <= 1875:
        upper = 1875
    return round((pointsForLevel/upper)*100)
