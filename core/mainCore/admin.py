from django.contrib import admin
from .models import CreditRequest, Borrowing, JsonReimbursementScheme

# Register your models here.


class CreditRequestAdmin(admin.ModelAdmin):
    pass


class BorrowingAdmin(admin.ModelAdmin):
    pass


class JsonReimbursementSchemeAdmin(admin.ModelAdmin):
    pass


admin.site.register(CreditRequest, CreditRequestAdmin)
admin.site.register(Borrowing, BorrowingAdmin)
admin.site.register(JsonReimbursementScheme, JsonReimbursementSchemeAdmin)
