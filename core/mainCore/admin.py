from django.contrib import admin
from .models import CreditRequest, Borrowing, JsonReimbursementScheme, \
    ReturnScheme, CreditTaking, Return, User

# Register your models here.


class CreditRequestAdmin(admin.ModelAdmin):
    pass


class BorrowingAdmin(admin.ModelAdmin):
    pass


class JsonReimbursementSchemeAdmin(admin.ModelAdmin):
    pass


class ReturnSchemeAdmin(admin.ModelAdmin):
    pass


class CreditTakingAdmin(admin.ModelAdmin):
    pass


class ReturnAdmin(admin.ModelAdmin):
    pass


class UserAdmin(admin.ModelAdmin):
    pass


admin.site.register(CreditRequest, CreditRequestAdmin)
admin.site.register(Borrowing, BorrowingAdmin)
admin.site.register(JsonReimbursementScheme, JsonReimbursementSchemeAdmin)
admin.site.register(ReturnScheme, ReturnSchemeAdmin)
admin.site.register(CreditTaking, CreditTakingAdmin)
admin.site.register(Return, ReturnAdmin)
admin.site.register(User, UserAdmin)
