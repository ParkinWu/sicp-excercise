;; f(row, col) = f(row - 1, col - 1) + f(row - 1, col)
;; f(row, 0) = 1
;;  当row == colf, (row, col) = 1,

(define (f row col)
  (cond ((= col 0) 1)
        ((= col row) 1)
        (else (+ (f (- row 1)
                    (- col 1))
                 (f (- row 1)
                    col)))))
