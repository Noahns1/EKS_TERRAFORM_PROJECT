from django import forms
from .models import *

class PhoneCallForm(forms.ModelForm):
    class Meta:
        model = PhoneCall
        fields = ['name', 'phone_number', 'date', 'time', 'comment']
        widgets = {
            'date': forms.DateInput(attrs={'type': 'date'}),
            'time': forms.TimeInput(attrs={'type': 'time'}),
        }