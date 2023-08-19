#lang racket

; (require readline)

(define true #t)
(define false #f)

;; Little concat function.
(define (concat input)
  (let ([accumulator ""])
    (for ([i input])
      (set! accumulator (format "~a~a" accumulator i)))
    accumulator))

;; Converts raw objects to string representation.
(define (stringify input)
  (format "~a" input))

;; Unsafe string comparison.
(define (unsafe-equal? raw-object-1 raw-object-2)
  (equal? (stringify raw-object-1) (stringify raw-object-2)))

;; Pulls a portion of a string into a new string.
(define (extract text min max)
  (substring text min max))

;; Inserts an element into a list.
(define (insert element list)
  (set! list (cons element list))
    list)

;; Breaks down a string into a list of strings.
(define (split inputstring)
  (let ([accumulator empty] [min 0] [index 0])
    (for ([i (string->list inputstring)])
      (begin
        (cond
          [(unsafe-equal? i " ")
           (set! accumulator (cons (extract inputstring min index) accumulator))
           (set! min (+ index 1))]
          [(or (equal? index (- (string-length inputstring) 1)))
           (set! accumulator (cons (extract inputstring min (+ index 1)) accumulator))])
        (set! index (+ index 1))))
    (reverse accumulator)))

(let ([command-chain (split "this is really cool")])
  (for ([i command-chain])
    (println i)))

; (split "hi there")