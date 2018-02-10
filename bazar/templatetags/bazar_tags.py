from django import template
from ..models import Entry
register = template.Library()


@register.inclusion_tag('last_ten.html')
def show_last_ten(user, count):
    last10 = Entry.objects.filter(user=user).order_by('-added_at')[:count]
    return {'entries': last10, 'count': count}


@register.inclusion_tag('monthly_chart.html')
def monthly_chart(user, month_num):
    sql = 'SELECT 1 id, YEAR(added_at) year,MONTH(added_at) month,SUM(total) total FROM `bazar_entry` e JOIN bazar_product p on(e.id=p.entry_id) where user_id=%s GROUP by YEAR(added_at),MONTH(added_at) order by year desc,month desc limit %s' % (user.id, month_num)
    print(sql)
    data = Entry.objects.raw(sql)
    print(data.columns)
    return {'data': data}
