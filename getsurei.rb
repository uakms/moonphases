# Author: nakinor
# Created: 2011-04-15
# Revised: 2016-01-29

# 月齢を計算して求めるプログラム

a_date = Time.now
a_hash = {1=>0, 2=>2, 3=>0, 4=>2, 5=>2, 6=>4,
          7=>5, 8=>6, 9=>7, 10=>8, 11=>9, 12=>10}
a = ((a_date.year - 11) % 19) * 11
b = a_hash[a_date.month]
c = a_date.day
getsurei = (a + b + c) % 30

print "今日は#{a_date.year}年#{a_date.month}月#{a_date.day}日です。"
puts "月齢は約#{getsurei}日です。"
