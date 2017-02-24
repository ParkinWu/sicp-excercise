(define (a-plus-abs-b a b)
  ((if (> a b) + -) a b))

;;如果 a > b => a + b
;; 否则 => a - b