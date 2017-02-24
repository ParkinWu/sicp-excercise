(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (abs x)
  (if (> x 0)
      x
      (- x)))

;; old version
;; (define (good-enough? guess x)
;;   (< (abs (- (square guess)
;;              x))
;;      0.00001))

(define (good-enough? guess x)
  (< (abs (- guess
             (improve guess x)))
     (* guess 0.001)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))



