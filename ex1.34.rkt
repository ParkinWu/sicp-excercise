(define (f g)
  (g 2))

(define (square x) (* x x))

(f square) ;; 4
(f (lambda (z) (* z (+ z 1))))

;; what happen (f f)
;; (f f) = (f 2) = (2 2), 因为2不是过程,因此为报错