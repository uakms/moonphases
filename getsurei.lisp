#!/usr/local/bin/clisp
;-*- coding: utf-8 -*-
; Author: nakinor
; Created: 2011-12-12
; Revised: 2011-12-16

;; 月齢を計算して求めるプログラム

; setq ではなくて defvar にしないと SBCL がうるさい
; Windows の SBCL では文字コードを CP932 にする
; sbcl --script getsurei.lisp で実行

(defvar *alist* '((1 . 0) (2 . 2) (3 . 0) (4 . 2) (5 . 2) (6 . 4) (7 . 5) (8 . 6) (9 . 7) (10 . 8) (11 . 9) (12 . 10)))

(defvar *a_year* (nth 5 (multiple-value-list (get-decoded-time))))
(defvar *a_month* (nth 4 (multiple-value-list (get-decoded-time))))
(defvar *a_day* (nth 3 (multiple-value-list (get-decoded-time))))

(defvar *getsurei*
  (mod
   (+
    (* (mod (- *a_year* 11) 19) 11)
    (cdr (assoc *a_month* *alist*))
    *a_day*
    )
   30)
  )

(format t "今日は~a年~a月~a日です。~%月齢は約~a日です。~%"
        *a_year* *a_month* *a_day* *getsurei*)
