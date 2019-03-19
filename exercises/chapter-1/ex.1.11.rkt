#lang racket/base
(require rackunit)
(define (recursive-f n)
  (if (< n 3)
      n
      (+ (recursive-f (- n 1))
         (recursive-f (- n 2))
         (recursive-f (- n 3)))))

(define (iterative-f n)
  (define (f-iter a b c counter)
    (cond ((< counter 3) counter)
          ((= counter 3) (+ a b c))
          (else (f-iter (+ a b c)
                        a
                        b
                        (- counter 1)))))
  (f-iter 2 1 0 n))

(check-equal? (iterative-f 6) (recursive-f 6))
(check-equal? (iterative-f 20) (recursive-f 20))