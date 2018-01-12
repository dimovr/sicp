(define (fixed-point f first-guess)
  
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) tolerance))
  
    (define (try guess)
        (let ((next (f guess)))
            (display guess)
            (display " -> ")
            (display next)
            (newline)
            (if (close-enough? guess next)
                next
            (try next))))

    (try first-guess))

(define (phi)
    (fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0))

