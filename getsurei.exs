# Author: nakinor
# Created: 2018-03-02
# Revised: 2018-03-02

# 月齢を計算して求めるプログラム

today = elem(:calendar.local_time(), 0)
year = elem(today, 0)
month = elem(today, 1)
day = elem(today, 2)
a_map = %{1=>0, 2=>2, 3=>0, 4=>2, 5=>2, 6=>4,
          7=>5, 8=>6, 9=>7, 10=>8, 11=>9, 12=>10}

a = rem((year - 11),  19) * 11
b = a_map[month]
c = day
getsurei = rem((a + b + c), 30)

IO.write "今日は#{year}年#{month}月#{day}日です。"
IO.puts "月齢は約#{getsurei}日です。"
