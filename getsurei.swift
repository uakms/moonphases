/* Author: nakinor
 * Created: 2015-09-20
 * Revised: 2016-10-31
 */

/* 月齢を計算して表示するプログラム */

import Foundation

let a_array = [0, 2, 0, 2, 2, 4, 5, 6, 7, 8, 9, 10]
let date = Date()

let format_year = DateFormatter()
format_year.dateFormat = "yyyy"
let year = Int(format_year.string(from:date))!

let format_month = DateFormatter()
format_month.dateFormat = "MM"
let month = Int(format_month.string(from:date))!

let format_day = DateFormatter()
format_day.dateFormat = "dd"
let day = Int(format_day.string(from:date))!

let a = ((year - 11) % 19 ) * 11
let b = a_array[month - 1]
let c = day
let getsurei = (a + b + c) % 30

print("今日は\(year)年\(month)月\(day)日です。月齢は約\(getsurei)日です。")
