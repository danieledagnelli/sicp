#lang racket
;Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers

(define (square x)
  (* x x)
  )

(define (smallest-of-3 a b c)
  (cond
    ((and (< a b) (< a c)) a)
    ((and (< b a) (< b c)) b)
    (else c)
    ))

; do sum the squares of the two number that are not the smallest
(define (sum-squares-2-larger-of-3 a b c)
  (cond
    ((= a (smallest-of-3 a b c)) (+ (square b) (square c)))
    ((= b (smallest-of-3 a b c)) (+ (square a) (square c)))
    (else (+ (square a) (square b)))
    ))


;tests
(= (largest-of-3 1 2 3) 3)
(= (largest-of-3 1 4 3) 4)
(= (largest-of-3 5 2 3) 5)
(= (largest-of-3 1 1 1) 1)
(= (largest-of-3 1 2 1) 2)
(= (largest-of-3 1 2 2) 2)

(= (smallest-of-3 1 2 3) 1)
(= (smallest-of-3 1 4 3) 1)
(= (smallest-of-3 5 2 3) 2)
(= (smallest-of-3 1 1 1) 1)
(= (smallest-of-3 1 2 1) 1)
(= (smallest-of-3 1 2 2) 1)

(= (square 3) 9)
(= (square 0) 0)
(= (square 1) 1)
(= (square 1/2) 1/4)

(= (sum-squares-2-larger-of-3 1 2 3) 13)
(= (sum-squares-2-larger-of-3 3 2 1) 13)
(= (sum-squares-2-larger-of-3 1 3 2) 13)
