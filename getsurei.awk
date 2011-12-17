#!/usr/local/bin/gawk
# -*- coding: utf-8 -*-
# Author: nakinor
# Created: 2011-12-17
# Revised: 2011-12-17

# 月齢を計算して求めるプログラム

BEGIN {
    a_arr[1] = 0; a_arr[2] = 2; a_arr[3] = 0; a_arr[4] = 2; a_arr[5] = 2;
    a_arr[6] = 4; a_arr[7] = 5; a_arr[8] = 6; a_arr[9] = 7; a_arr[10] = 8;
    a_arr[11] = 9; a_arr[12] = 10;

    a = ((strftime("%Y") - 11) % 19) * 11;
    b = a_arr[strftime("%m")];
    c = strftime("%d");
    getsurei = (a + b + c) % 30;
    printf "今日は%s年%s月%s日です。\n",
        strftime("%Y"), strftime("%m"), strftime("%d");
    printf "月齢は約%s日です。\n", getsurei;
}
