;; 递归
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

(define (g a b c n)
  (cond ((< n 3) a)
        (else (g (+ a
                    (* 2 b)
                    (* 3 c))
                 a
                 b
                 (- n 1)))))

(define (f1 n)
  (g 2 1 0 n))

  