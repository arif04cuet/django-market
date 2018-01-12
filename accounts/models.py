from django.db import models
from django.contrib.auth.models import User, Group
from django.db.models.signals import post_save
from django.dispatch import receiver

from geoposition.fields import GeopositionField


class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    name = models.CharField(max_length=50, blank=True)
    location = GeopositionField(blank=True)

    class Meta:
        db_table = 'user_profile'

    def __str__(self):
        return self.name if self.name else self.user.username


@receiver(post_save, sender=User)
def update_user_profile(sender, instance, created, **kwargs):
    if created:
        Profile.objects.create(user=instance)
        group = Group.objects.get(name='Consumer')
        instance.groups.add(group)

    instance.profile.save()
