(*
   Author: nakinor
   Created: 2015-09-21
   Revised: 2015-09-21

   月齢を計算して求めるプログラム
*)

(* 日付を取得 *)
open System;;
let date = DateTime.Today;;

(* 配列を作っておく リストではなく配列の方で *)
let a_array = [| 0; 2; 0; 2; 2; 4; 5; 6; 7; 8; 9; 10 |];;

(* 計算 *)
let a = ((date.Year - 11) % 19) * 11;;
let b = a_array.[date.Month - 1];;
let c = date.Day;;
let getsurei = (a + b + c) % 30;;

(* 表示 *)
Printf.printf "今日は%d年%d月%d日です。\n月齢は約%d日です。\n"
  date.Year date.Month date.Day getsurei;;
