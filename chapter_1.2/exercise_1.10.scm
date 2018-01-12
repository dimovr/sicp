(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))


;;1 ]=> (A 1 10)
;;;Value: 1024

;;1 ]=> (A 2 4)
;;;Value: 65536

;;1 ]=> (A 3 3)
;;;Value: 65536



(define (f n) (A 0 n))

;; the output of 'f' will be 2*n for any integer
;; since the expression in the body of the second condition will always be evaluated

;;1 ]=> (f 2)
;;;Value: 4

;;1 ]=> (f 100)
;;;Value: 200


(define (g n) (A 1 n))

;; g = 0     for n = 0 -> first predicate yields 'true'
;; g = 2     for n = 1 -> thrid predicate yields 'true'
;; g = 2^n   for n > 1 
;;
;; (A 1 n)
;; (A 0 (A 1 n)) 
;; (A 0 (A 0 (A 1 n -2))) 
;; .....
;; ..................(A 0 (A 0 (A 1 1)))
;; ..............(A 0 (A 0 2))
;; ........(A 0 4)
;; .....
;; (A 0 2^(n-1))
;; 2^n


(define (h n) (A 2 n))

;; h = 0            for n = 0 -> first predicate yields 'true'
;; h = 2            for n = 1 -> thrid predicate yields 'true'
;; h = 2^h(n - 1)   for n > 1 
