(define (f g)
  (g 2))

;;1 ]=> (f square)
;;;Value: 4

;;1 ]=> (f (lambda (z) (* z (+ z 1))))
;;;Value: 6


;;1 ]=> (f f)
;;;The object 2 is not applicable.
;;
;; g = f :  (g 2) -> (f 2)
;; g = 2 :  (f 2) -> (2 2)
;; 2 can't be applied to 2

