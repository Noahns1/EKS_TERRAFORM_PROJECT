from django.db import models

class PhoneCall(models.Model):
    name = models.CharField(max_length=100)
    phone_number = models.CharField(max_length=15)
    date = models.DateField()
    time = models.TimeField()
    comment = models.TextField(blank=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __detail__(self):
        return f"{self.name} on {self.date} at {self.time}"