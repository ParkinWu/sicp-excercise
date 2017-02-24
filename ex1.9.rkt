(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))
;; 递归


(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
;; 迭代
