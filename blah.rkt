#lang racket

; Little concat function
(define (concat input)
  (let ([accumulator ""])
    (for ([i input])
      (set! accumulator (format "~a~a" accumulator i)))
    accumulator))

(print (concat '("test" 1 2 3)))


