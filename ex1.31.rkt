;; a)
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))


(define (id x) x)

(define (factorial x)
  (product id 1 inc x))



;; PI


(define (pi n)
  (define (square x) (* x x))
  (define (item n) (/ (* 2 (+ n 2))
                    (+ 3
                       (* 2 n)))) ;; next n = 2(n + 2) / (2n + 3)
  (define (term n) (square (item n)))
  (/ (* 4 (product term 0.0 inc n))
     n))



