;; 月齢を求める
; Author: nakinor
; Created: 2011-04-15
; Revised: 2011-12-15

(defun getsurei ()
  (interactive)
  (message "月齢は約%d日です"
    (% (+
        (* (% (- (string-to-number (format-time-string "%Y"))
                 11) 19) 11)
        (cdr
         (elt '((0 . 0) (1 . 0) (2 . 2) (3 . 0) (4 . 2)
                (5 . 2) (6 . 4) (7 . 5) (8 . 6) (9 . 7)
                (10 . 8) (11 . 9) (12 . 10))
              (string-to-number (format-time-string "%m"))))
        (string-to-number (format-time-string "%d"))) 30)))
