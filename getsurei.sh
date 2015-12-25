#!/bin/sh
# Author: nakinor
# Created: 2011-12-15
# Revised: 2015-12-25

# 月齢を計算して求めるプログラム

# 「変数=値」に空白を入れない
a_year=`date +%Y`
a_month=`date +%m | sed -e "s/^0//"`
a_day=`date +%d | sed -e "s/^0//"`

# 計算は $(()) で括る
a=$(( (($a_year - 11) % 19) * 11 ))

if [ $a_month = 1 ] || [ $a_month = 3 ] ; then
    b=0
elif [ $a_month = 2 ] || [ $a_month = 4 ] || [ $a_month = 5 ] ; then
    b=2
elif [ $a_month = 6 ] ; then
    b=4
elif [ $a_month = 7 ] ; then
    b=5
elif [ $a_month = 8 ] ; then
    b=6
elif [ $a_month = 9 ] ; then
    b=7
elif [ $a_month = 10 ] ; then
    b=8
elif [ $a_month = 11 ] ; then
    b=9
elif [ $a_month = 12 ] ; then
    b=10
fi

c=$a_day
getsurei=$(( ((a + b + c) % 30) ))

# 変数の参照には $ を付ける
printf '今日は%s年%s月%s日です。\n' $a_year $a_month $a_day
printf '月齢は約%d日です。\n' $getsurei
