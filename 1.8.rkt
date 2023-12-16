#lang racket
(define (square x) (* x x) )
(define (cube x) (* x x x) )

(define ( improve y x) 
(/ (+ (/ x (square y)) (* 2 y)) 3)
)


(define (cube-root-iter y x) 
( if (good-enough-improved?  y (improve y x)) 
y 
( cube-root-iter ( improve y x) 
x)))


(define (good-enough-improved? previous-guess guess) 
(< (abs (/ (- guess previous-guess) guess)) 0.0000001))


(define (cube-root x) 
( cube-root-iter 1.0 x))



;test
display
(cube-root 1000)
(cube-root -1000)
(cube-root 27)
(cube-root 125)


