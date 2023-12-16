#lang racket
 (require racket/trace)
;A function f is defined by the rule that
;f (n) = n if n < 3
;   and
;f (n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3
;Write a procedure that computes f by means of a recursive process. 


;WIP










;Write a procedure that computes f by means of an iterative process

(define (f-iter n)
  (cond ((< n 3) n)
        (else (+ (f-iter (- n 1)) (* 2 (f-iter (- n 2))) (* 3 (f-iter (- n 3))))
              )
        )
  )

;tests
(trace f-iter)
(= (f-iter -1) -1)
(= (f-iter 0) 0)
(= (f-iter 1) 1)
(= (f-iter 2) 2)
(= (f-iter 3) 4)
(= (f-iter 4) 11)