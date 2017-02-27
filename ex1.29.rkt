(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b) dx))

(define (cube x) (* x x x))

;; -------------------
;; (f (+ a (* k h)))
(define (integral1 f a b n)
  (define h (/ (- b a) n))
  (define (y k)
    (* (f (+ a (* k h)))
       (cond ((= k 0) 1)
             ((= k b) 1)
             ((odd? k) 4)
             (else 2))))
  (/ (* h
        (sum y a inc n))
     3))
;;(integral1 cube 0 1 100000.0)  => 0.25000333333332797
;;(integral1 cube 0 1 1000.0) => 0.2503333333323336
;;(integral1 cube 0 1 100.0) => 0.2533333233333332
