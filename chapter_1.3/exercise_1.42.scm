(define (compose f g) 
    (lambda (x) (f (g x)))) 

;;1 ]=> ((compose square inc) 6)
;;;Value: 49
;;
;; expands to:
;; (square (inc 6))
;; (square 7)
;; 7 * 7
;; 49
