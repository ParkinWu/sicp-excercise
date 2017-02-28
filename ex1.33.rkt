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

;; a)
(define (prime? x) #t) ;; test, avoid error
(accumulate prime? + 0 id 1 inc 10)
;; b)
(define (gcd-acc n)
  (define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))
  
  (define (gcd-and-lt? x) (and (< x n)
                               (= (gcd x n) 1)))
  (accumulate gcd-and-lt? * 1 id 1 inc 10))

;; test
(gcd-acc 5) ;; 24



