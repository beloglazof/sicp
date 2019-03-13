#lang racket
(define (square x)(* x x))
(define (sum-of-squares num1 num2) (+ (square num1) (square num2)))
(define (sum-of-squares-of-greaters a b c)
  (cond ((> a b)
         (cond ((> b c) (sum-of-squares a b))
               (else (sum-of-squares a c))))
        (else (cond ((> a c) (sum-of-squares a b))
                    (else (sum-of-squares b c))))))