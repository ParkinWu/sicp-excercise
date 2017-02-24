(define (sum-of-max-two x y z)
  (cond ((and (or (< x y)
                  (= x y))
              (or (< x z)
                  (= x z))) (+ y z))
        ((and (or (< y x)
                  (= y x))
              (or (< y z)
                  (= y z))) (+ x z))
        ((and (or (< z x)
                  (= z x))
              (or (< z y)
                  (= z y))) (+ x y))))

(sum-of-max-two 1 2 3)
(sum-of-max-two 1 1 2)
(sum-of-max-two 1 1 1)
