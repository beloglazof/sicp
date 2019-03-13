#lang racket/base

(require rackunit)

(define (square x)(* x x))
(define (sum-of-squares num1 num2) (+ (square num1) (square num2)))
(define (sum-of-squares-of-greaters a b c)
  (cond ((> a b)
         (cond ((> b c) (sum-of-squares a b))
               (else (sum-of-squares a c))))
        (else (cond ((> a c) (sum-of-squares a b))
                    (else (sum-of-squares b c))))))

(check-equal? (sum-of-squares-of-greaters 0 0 0) 0)
(check-equal? (sum-of-squares-of-greaters 5 4 3) (sum-of-squares 5 4))
(check-equal? (sum-of-squares-of-greaters -32 -324 3) (sum-of-squares 3 -32))