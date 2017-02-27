;; (define (sum term a next b)
;;   (if (> a b)
;;       0
;;       (+ (term a)
;;          (sum term (next a) next b))))

;; -------------------


(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (+ result
                 (term a)))))
  (iter a 0))


(define (id x) x)
(define (square x) (* x x))
;; test
;; (sum id 1 inc 10) => 55
;; (sum square 1 inc 2) => 5