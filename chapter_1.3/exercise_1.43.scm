(define (repeated f n) 
    (if (< n 1) 
        (lambda (x) x) 
        (compose f (repeated f (- n 1))))) 

;;1 ]=> ((repeated square 2) 5)
;;;Value: 625
;;
;; expands to:
;; ((repeated square 2) 5)
;; ((compose square (repeated square 1)) 5)
;; ((compose square (compose square (repeated square 0))) 5)
;; ((compose square (compose square (lambda (x) x))) 5)
;; ((compose square (lambda (x) (square x))) 5)
;; ((lambda (x) (square (square x))) 5)
;; (square (square 5))
;; (square 25)
;; 625
