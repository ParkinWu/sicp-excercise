(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))
(test 0 (p))
;; (test 0 (p)), 如果是应用序, 先进行参数求值, 此时 p 会陷入无限递归
;; 正则序, 则会先进行代换不求值, 条件 x = 0 成立, 不会进入 else 分支