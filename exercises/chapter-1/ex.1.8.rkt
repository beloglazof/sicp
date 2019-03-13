#lang racket
(define (cbrt-iter guess old-guess x)
  (if (good-enough? guess old-guess)
      guess
      (cbrt-iter (improve guess x)
                 guess
                 x)))

(define (good-enough? guess old-guess)
  (< (abs (- guess old-guess)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (square x) (* x x))

(define (cbrt x)
  (cbrt-iter 1.0 0 x))