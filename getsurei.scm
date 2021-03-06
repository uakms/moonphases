; Author: nakinor
; Created: 2011-04-15
; Revised: 2016-03-19

; 月齢を計算して求めるプログラム

(use srfi-19)

(define hash '((1 . 0) (2 . 2) (3 . 0) (4 . 2) (5 . 2) (6 . 4)
               (7 . 5) (8 . 6) (9 . 7) (10 . 8) (11 . 9) (12 . 10)))

(define getsurei
  (remainder
   (+ (* (remainder (- (date-year (current-date)) 11) 19) 11)
      (cdr (assq (date-month (current-date)) hash))
      (date-day (current-date)))
   30))

(display (format "今日は~s年~s月~s日です。月齢は約~s日です。\n"
                 (date-year (current-date))
                 (date-month (current-date))
                 (date-day (current-date))
                 getsurei))
