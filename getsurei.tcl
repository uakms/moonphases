# Author: nakinor
# Created: 2016-03-14
# Revised: 2016-03-14

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

puts -nonewline "今日は$year"
puts -nonewline "年$month"
puts -nonewline "月$day"
puts -nonewline "日です。月齢は約$getsu"
puts "日です。"
