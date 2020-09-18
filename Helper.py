Helper.py

from dateutil.relativedelta import relativedelta
import datetime

def get_date():
    get_date = datetime.date.today()
    get_year = str(get_date.year)
    get_month = str(get_date.month) if get_date.month > 9 else "0" + str(get_date.month)
    get_day = str(get_date.day) if get_date.day > 9 else "0" + str(get_date.day)
    data_date = get_year + "/" + get_month + "/" + get_day
    return data_date

def get_today_timestamp(addstring=""):
    addstring = str(addstring)
    ts = datetime.datetime.now().timestamp()
    ts = int(ts)
    return str(ts) + addstring