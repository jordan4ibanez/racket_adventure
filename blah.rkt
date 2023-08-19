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
  (let ([accumulator empty]
        [index 0])
    (for ([i (string->list inputstring)])
      (cond [(unsafe-equal? i " ")
               (print (format "fuck~%"))]
            [else (print (stringify i))]
          ))
    ))

(split "hi there")
(println "")

(define string-args "Create a moonlander out of cheese")


(random-seed (modulo (exact-round (+ (string-length string-args) (current-inexact-milliseconds))) 2147483647))
(let ([choices '(yes no probably "I have no idea" maybe "probably not" "I think so" "Why are you asking me??")])
  (let ([result (list-ref choices (random 0 (length choices)))])
    result))
