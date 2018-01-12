
(define (p) (p))
 
(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;;; In applicative-order evaluation, (p) will be evaluated, resulting in an infinite loop, regardless of the argument x.
;;; In normal-order evaluation, (p) is not evaluated because the predicate of if evaluates to true for x = 0.

