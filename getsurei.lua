#!/usr/local/bin/lua
-- -*- coding: utf-8 -*-
-- Author: nakinor
-- Created: 2011-12-14
-- Revised: 2011-12-14

-- 数字をキーに出来ないの？
table = {Jan = 0, Feb = 2, Mar = 0, Apr = 2, May = 2, Jun = 4, Jul = 5, Aug = 6, Sep = 7, Oct = 8, Nov = 9, Dec = 10}
--table = {1 = 0, 2 = 2, 3 = 0, 4 = 2, 5 = 2, 6 = 4, 7 = 5, 8 = 6, 9 = 7, 10 = 8, 11 = 9, 12 = 10}

a = ((os.date("%Y") - 11) % 19) * 11
b = table[os.date("%b")]
--b = table[os.date("%m")]
c = os.date("%d")
getsurei = (a + b + c) % 30

-- キモーイ、Vim script みたい
print ("月齢は約" .. getsurei .. "日だよん。")
