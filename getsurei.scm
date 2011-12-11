#!/usr/local/bin/gosh
;-*- coding: utf-8 -*-
; Author: nakinor
; Created: 2011-04-15
; Revised: 2011-04-15

(use srfi-19)

(define hash '((1 . 0) (2 . 2) (3 . 0) (4 . 2) (5 . 2) (6 . 4) (7 . 5) (8 . 6) (9 . 7) (10 . 8) (11 . 9) (12 . 10)))

(define getsurei
  (remainder
   (+
    (* (remainder (- (date-year (current-date)) 11) 19) 11)
    (cdr (assq (date-month (current-date)) hash))
    (date-day (current-date))
    )
   30)
  )

(display (format "月齢は約~s日だよん。\n"  getsurei))
