/* Author: nakinor
 * Created: 2015-09-20
 * Revised: 2015-09-21
 */

/* 月齢を計算して表示するプログラム */

import Foundation

let a_array = [0, 2, 0, 2, 2, 4, 5, 6, 7, 8, 9, 10]
let date = NSDate()

let format_year = NSDateFormatter()
format_year.dateFormat = "yyyy"
let year = format_year.stringFromDate(date).toInt()!

let format_month = NSDateFormatter()
format_month.dateFormat = "MM"
let month = format_month.stringFromDate(date).toInt()!

let format_day = NSDateFormatter()
format_day.dateFormat = "dd"
let day = format_day.stringFromDate(date).toInt()!

let a = ((year - 11) % 19 ) * 11
let b = a_array[month - 1]
let c = day
let getsurei = (a + b + c) % 30

// 自分の環境はまだ swift 1.1 なので。アップデートしたら print にする。
println("今日の日付は\(year)年\(month)月\(day)日です。")
println("月齢は約\(getsurei)日です。")
