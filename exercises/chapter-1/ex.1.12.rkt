#lang racket/base
(define (factorial n)
  (define (fact-iter product counter)
    (if (> counter n)
        product
        (fact-iter (* counter product)
                   (+ counter 1))))
  (fact-iter 1 1))

(define (combinations n k)
  (/ (factorial n)
     (* (factorial k)
        (factorial (- n k)))))

(define (get-pascal-triangle-item row-num num-in-row)
  (combinations row-num num-in-row))
