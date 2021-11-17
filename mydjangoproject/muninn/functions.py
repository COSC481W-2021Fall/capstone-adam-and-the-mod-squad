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
        lower = 0
        upper = 75
        diff = upper-lower
    elif pointsForLevel > 75 and pointsForLevel <= 175:
        lower = 76
        upper = 175
        diff = upper-lower
    elif pointsForLevel > 175 and pointsForLevel <= 300:
        lower = 176
        upper = 300
        diff = upper-lower
    elif pointsForLevel > 300 and pointsForLevel <= 450:
        lower = 301
        upper = 450
        diff = upper-lower
    elif pointsForLevel > 450 and pointsForLevel <= 625:
        lower = 451
        upper = 625
        diff = upper-lower
    elif pointsForLevel > 625 and pointsForLevel <= 825:
        lower = 626
        upper = 825
        diff = upper-lower
    elif pointsForLevel > 825 and pointsForLevel <= 1050:
        lower = 826
        upper = 1050
        diff = upper-lower
    elif pointsForLevel > 1050 and pointsForLevel <= 1300:
        lower = 1051
        upper = 1300
        diff = upper-lower
    elif pointsForLevel > 1300 and pointsForLevel <= 1575:
        lower = 1301
        upper = 1575
        diff = upper-lower
    elif pointsForLevel > 1575 and pointsForLevel <= 1875:
        lower = 1576
        upper = 1875
        diff = upper-lower
    pointsForLevel = pointsForLevel-lower

    return round((pointsForLevel/(diff+1))*100)
