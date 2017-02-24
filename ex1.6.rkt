(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (abs x)
  (if (> x 0)
      x
      (- x)))

(define (good-enough? guess x)
  (< (abs (- (square guess)
             x))
     0.00001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))


;; 不使用特殊的 if

(define (new-if pred then-clause else-clause)
  (cond (pred then-clause)
        (else else-clause)))

(define (new-sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (new-sqrt-iter (improve guess x)
                         x)))

;; 问题在于, 应用序求值,会先计算过程每个参数的值,
;; 所以此时,无论 pred的真假,都会计算条件分支, 造成无限递归


