from django.contrib import admin
from .models import Task
# from .models import MuninnUserv2 (EXAMPLE)
# admin.site.register(MuninnUserv2)

# ^ follow above logic to add tables to admin page

admin.site.register(Task)