
(define (sum-larger-squares a b c)
  (define (sum-squares a b) (+ (* a a) (* b b)))
  (cond ((and (<= a b) (<= a c)) (sum-squares b c))
    ((and (<= b a) (<= b c)) (sum-squares a c))
    (else (sum-squares a b))))

