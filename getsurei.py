# Author: nakinor
# Created: 2011-04-15
# Revised: 2016-03-19

# 月齢を計算して求めるプログラム

import datetime

a_date = datetime.datetime.today()
a_dict = {1:0, 2:2, 3:0, 4:2, 5:2, 6:4, 7:5, 8:6, 9:7, 10:8, 11:9, 12:10}
a = ((a_date.year - 11) % 19) * 11
b = a_dict[a_date.month]
c = a_date.day
getsurei = (a + b + c) % 30

print("今日は{0}年{1}月{2}日です。".format(a_date.year,
                                           a_date.month, a_date.day), end="")
print("月齢は約{0}日です。".format(getsurei))
