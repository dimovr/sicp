(define (double f) 
         (lambda (x) (f (f x)))) 

(define (inc x) (+ 1 x))


;;1 ]=> ((double inc) 5)
;;;Value: 7
;;1 ]=> (inc (inc 5))
;;;Value: 7
;;
;;1 ]=> ((double (double inc)) 5)
;;;Value: 9


;;1 ]=> ((double (lambda (x) (* x 2))) 2)
;;;Value: 8
;; 
;; expands to: ((lambda (x) (* (* x 2) 2)) 2)


;;1 ]=> (((double (double double)) inc) 5)
;;;Value: 21

;; (((double (double double)) inc) 5) 
;; (((double (lambda (x) (double (double x)))) inc) 5) 
;;
;; expands to: 
;;  ((double (double (double (lambda (x) (inc (inc x)))))) 5) 
;; resulting in:
;; ...(inc (inc (inc 5)))... 16 times
;;
