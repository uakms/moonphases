#!/usr/local/bin/gawk -f
# -*- coding: utf-8 -*-
# Author: nakinor
# Created: 2011-12-17
# Revised: 2011-12-18

# 月齢を計算して求めるプログラム

BEGIN {
    a_array[1] = 0; a_array[2] = 2; a_array[3] = 0; a_array[4] = 2;
    a_array[5] = 2; a_array[6] = 4; a_array[7] = 5; a_array[8] = 6;
    a_array[9] = 7; a_array[10] = 8; a_array[11] = 9; a_array[12] = 10;

    a = ((strftime("%Y") - 11) % 19) * 11;
    b = a_array[strftime("%m")];
    c = strftime("%d");
    getsurei = (a + b + c) % 30;

    printf "今日は%s年%s月%s日です。\n",
        strftime("%Y"), strftime("%m"), strftime("%d");
    printf "月齢は約%s日です。\n", getsurei;
}
