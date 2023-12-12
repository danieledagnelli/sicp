#lang racket
(define (square x) (* x x) )

(define ( sqrt-iter guess x) 
( if (good-enough? guess x) 
guess 
( sqrt-iter ( improve guess x) 
x)))

(define ( improve guess x) 
(average guess (/ x guess)))

(define ( average x y) 
(/ (+ x y) 2))

(define (good-enough? guess x) 
(< (abs (- (square guess) x)) 0.001))

(define (sqrt x) 
( sqrt-iter 1.0 x ) )


;test
(sqrt 10000000000000000000000000)
(sqrt 100000000000000000000000000)
(sqrt 1000000000000000000000000000)
(sqrt 10000000000000000000000000000)
(sqrt 0.16)
(sqrt 0.000016)
(sqrt 0.0000000016)

(define ( sqrt-iter-improved guess x) 
( if (good-enough-improved?  guess (improve guess x)) 
guess 
( sqrt-iter-improved ( improve guess x) 
x)))

(define (good-enough-improved? previous-guess guess) 
(< (abs (/ (- guess previous-guess) guess)) 0.0000001))


(define (sqrt-improved x) 
( sqrt-iter-improved 1.0 x))



;test
display
(sqrt-improved 10)
(sqrt-improved 10000000000000000000000000)
(sqrt-improved 100000000000000000000000000)
(sqrt-improved 1000000000000000000000000000)
(sqrt-improved 10000000000000000000000000000)
(sqrt-improved 0.16)
(sqrt-improved 0.000016)
(sqrt-improved 0.0000000016)