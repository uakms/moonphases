#!/usr/local/bin/lua
-- -*- coding: utf-8 -*-
-- Author: nakinor
-- Created: 2011-12-14
-- Revised: 2011-12-16

-- 月齢を計算して求めるプログラム

-- 数字をキーに出来ないの？
table = {Jan = 0, Feb = 2, Mar = 0, Apr = 2, May = 2, Jun = 4, Jul = 5, Aug = 6, Sep = 7, Oct = 8, Nov = 9, Dec = 10}

a = ((os.date("%Y") - 11) % 19) * 11
b = table[os.date("%b")]
c = os.date("%d")
getsurei = (a + b + c) % 30

-- キモーイ、Vim script みたい
print ("今日は" .. os.date("%Y") .. "年" .. os.date("%m") .. "月"
 .. os.date("%d") .. "日です。\n月齢は約" .. getsurei .. "日です。")
