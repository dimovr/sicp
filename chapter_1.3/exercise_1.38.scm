(define (e-euler k) 
    (+ 2 (cont-frac (lambda (i) 1) 
        (lambda (i) 
        (if (= (remainder i 3) 2) 
            (/ (+ i 1) 1.5) 
            1)) 
        k))) 

(define (euler-e k) 
    (+ 2 (cont-frac-iter (lambda (i) 1) 
        (lambda (i) 
        (if (= (remainder i 3) 2) 
            (/ (+ i 1) 1.5) 
            1)) 
        k))) 

(define e (euler-e 10))

;;1 ]=> e
;;;Value: 2.7182817182817183
