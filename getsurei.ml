#!/usr/local/bin/ocaml
(*
   Author: nakinor
   Created: 2011-12-14
   Revised: 2011-12-15
*)

(* 日付を取得 何だかC言語みたい *)
#load "unix.cma";;
let today = Unix.localtime (Unix.time());;
let year = today.Unix.tm_year + 1900;;
let month = today.Unix.tm_mon;; (* 0-11 配列の添字となるのでこのままで良い *)
let day = today.Unix.tm_mday;;

(* 配列を作っておく リストではなく配列の方で *)
let a_array = [| 0; 2; 0; 2; 2; 4; 5; 6; 7; 8; 9; 10 |];;

(* 計算 *)
let a = ((year - 11) mod 19) * 11;;
let b = a_array.(month);;
let c = day;;
let getsurei = (a + b + c) mod 30;;

(* 表示 *)
Printf.printf "月齢は約%d日だよん。" getsurei;
print_newline(); flush_all();;
