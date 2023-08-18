#lang racket

(require readline)

(define true #t)
(define false #f)

;; Little concat function.
(define (concat input)
  (let ([accumulator ""])
    (for ([i input])
      (set! accumulator (format "~a~a" accumulator i)))
    accumulator))

; (print (concat '("test" 1 2 3)))

;; Converts chars to string representation.
(define (stringify inputchar)
  (format "~a" inputchar))

;; Unsafe string comparison.
(define (unsafe-equal? raw-object-1 raw-object-2)
  (equal? (stringify raw-object-1) (stringify raw-object-2)))

;; Breaks down a string into a list of strings.
(define (split inputstring)
  (let ([accumulator empty])
    (for ([i (string->list inputstring)])
      (when (unsafe-equal? i " ")
          (print (format "fuck~%")))
      (print (stringify i))
    )))

(split "hi there")


