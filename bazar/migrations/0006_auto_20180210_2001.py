# -*- coding: utf-8 -*-
# Generated by Django 1.11.8 on 2018-02-10 14:01
from __future__ import unicode_literals

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bazar', '0005_product_total'),
    ]

    operations = [
        migrations.AlterField(
            model_name='entry',
            name='added_at',
            field=models.DateTimeField(default=datetime.datetime.now),
        ),
    ]
