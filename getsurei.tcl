# Author: nakinor
# Created: 2016-03-14
# Revised: 2016-04-01

# 月齢を計算して求めるプログラム

array set arr {
    01 0
    02 2
    03 0
    04 2
    05 2
    06 4
    07 5
    08 6
    09 7
    10 8
    11 9
    12 10
}

set year [clock format [clock seconds] -format {%Y}]
set month [clock format [clock seconds] -format {%m}]
set day [clock format [clock seconds] -format {%e}]

set a [expr (($year - 11) % 19) * 11]
set b $arr($month)
set c $day
set getsu [expr ($a + $b + $c) % 30]
set mon2 [expr $month * 1]
set day2 [expr $day * 1]

puts -nonewline "今日は$year\年$mon2\月$day2\日です。"
puts "月齢は約$getsu\日です。"
