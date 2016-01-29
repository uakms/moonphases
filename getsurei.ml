(*
   Author: nakinor
   Created: 2011-12-14
   Revised: 2016-01-29

   月齢を計算して求めるプログラム
*)

(* 日付を取得 何だかC言語みたい *)
#load "unix.cma";;
let today = Unix.localtime (Unix.time());;
let a_year = today.Unix.tm_year + 1900;;
let a_month = today.Unix.tm_mon;; (* 0-11 配列の添字となるのでこのままで良い *)
let a_day = today.Unix.tm_mday;;
let m_month = a_month + 1;; (* 出力用 *)

(* 配列を作っておく リストではなく配列の方で *)
let a_array = [| 0; 2; 0; 2; 2; 4; 5; 6; 7; 8; 9; 10 |];;

(* 計算 *)
let a = ((a_year - 11) mod 19) * 11;;
let b = a_array.(a_month);;
let c = a_day;;
let getsurei = (a + b + c) mod 30;;

(* 表示 *)
Printf.printf "今日は%d年%d月%d日です。月齢は約%d日です。"
  a_year m_month a_day getsurei;
print_newline(); flush_all();;
