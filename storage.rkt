#lang racket

(println "")

(define string-args "Create a moonlander out of cheese")


(random-seed (modulo (exact-round (+ (string-length string-args) (current-inexact-milliseconds))) 2147483647))
(let ([choices '(yes no probably "I have no idea" maybe "probably not" "I think so" "Why are you asking me??")])
  (let ([result (list-ref choices (random 0 (length choices)))])
    result))

(+ 10 14)

(define (return-multiple)
  '(1 2 3))

(return-multiple)