# -*- coding: utf-8 -*-
# Author: nakinor
# Created: 2011-12-17
# Revised: 2016-01-29

# 月齢を計算して求めるプログラム

@a_list = (0, 2, 0, 2, 2, 4, 5, 6, 7, 8, 9, 10);
($day, $month, $year) = (localtime(time))[3..5];
$year += 1900;
my $a = (($year - 11) % 19) * 11;
my $b = ($a_list[$month]);
my $c = $day;
$month += 1;     # b は求めてしまったので破壊代入をしちゃう
my $getsurei = ($a + $b + $c) % 30;

print "今日は$year年$month月$day日です。";
print "月齢は約$getsurei日です。\n";
