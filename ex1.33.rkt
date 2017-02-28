;; 递归
(define (accumulate filter combiner null-value term a next b)
  (if (> a b)
      null-value
      (if (filter a)
          (combiner (term a)
                    (accumulate filter combiner null-value term (next a) next b))
          (accumulate filter combiner null-value term (next a) next b))))

;; 迭代
(define (accumulate1 filter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (if (filter a)
                  (combiner result
                            (term a))
                  result))))
  (iter a null-value))


;; test
(define (id x) x)
(accumulate1 odd? + 0 id 1 inc 10)
(accumulate odd? + 0 id 1 inc 10)


