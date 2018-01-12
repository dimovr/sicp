
(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (abs x) 
  ((if (> x 0) + -) 0 x))

(define (improve guess x) 
  (average guess (/ x guess)))

(define error_margin 0.001)

(define (good-enough? guess x) 
  (< (abs (- (square guess) x)) error_margin))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x) (sqrt-iter 1.0 x))

;;1 ]=> (sqrt 4)
;;;Value: 2.0000000929222947

;;1 ]=> (sqrt (+ 5 4))
;;;Value: 3.00009155413138

;;1 ]=> (sqrt (square 10))
;;;Value: 10.000000000139897


(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;;1 ]=> (new-if (= 2 3) 0 5)
;;;Value: 5

;;1 ]=> (new-if (= 1 1) 0 5)
;;;Value: 0


(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

;;1 ]=> (sqrt 9)
;;;Aborting!: maximum recursion depth exceeded

;;1 ]=> (sqrt (+ 5 4))
;;;Aborting!: maximum recursion depth exceeded

;; 'sqrt-iter' makes a call to 'new-if' which in turn calls 'sqrt-iter' and so on
;; creating an infinite loop
