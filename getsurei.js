// Author: nakinor
// Created: 2011-06-04
// Revised: 2011-12-16

// 月齢を計算して求めるプログラム

var d = new Date();
var list = new Array(0,2,0,2,2,4,5,6,7,8,9,10);
var Year = d.getFullYear();
var Month = d.getMonth() + 1;
var Day = d.getDate();
var getsurei = (((Year - 11) % 19) * 11 + list[Month - 1] + Day) % 30;
document.write("今日は"+Year+"年"+Month+"月"+Day+"日です。");
document.write("月齢は約"+getsurei+"日です。");
