// Author: nakinor
// Created: 2015-11-08
// Revised: 2015-11-08

// 月齢を計算して求めるプログラム

var d = new Date();
var list = new Array(0,2,0,2,2,4,5,6,7,8,9,10);
var Year = d.getFullYear();
var Month = d.getMonth() + 1;
var Day = d.getDate();
var getsurei = (((Year - 11) % 19) * 11 + list[Month - 1] + Day) % 30;
console.log("今日は"+Year+"年"+Month+"月"+Day+"日です。");
console.log("月齢は約"+getsurei+"日です。");
