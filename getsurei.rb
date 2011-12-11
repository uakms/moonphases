#!/usr/local/bin/ruby
# -*- coding: utf-8 -*-
# Author: nakinor
# Created: 2011-04-15
# Revised: 2011-04-15

d = Time.now
hash = {1=>0, 2=>2, 3=>0, 4=>2, 5=>2, 6=>4, 7=>5, 8=>6, 9=>7, 10=>8, 11=>9, 12=>10}
a = ((d.year - 11) % 19) * 11
b = hash[d.month]
c = d.day
getsurei = (a + b + c) % 30
print "月齢は約#{getsurei}日だよん。\n"
