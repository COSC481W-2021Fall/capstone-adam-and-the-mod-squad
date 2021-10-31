from django.contrib import admin
from .models import Task, Animals, MuninnPlayer, MuninnDailyHabits, MuninnMasterHabits
# from .models import MuninnUserv2 (EXAMPLE)
# admin.site.register(MuninnUserv2)

# ^ follow above logic to add tables to admin page

admin.site.register(Task)
admin.site.register(Animals)
admin.site.register(MuninnPlayer)
admin.site.register(MuninnDailyHabits)
admin.site.register(MuninnMasterHabits)