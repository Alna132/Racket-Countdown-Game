#lang racket

; Countdown game developed in the Racket Programming Language.
; Aim: Take in 6 random numbers from a list of 24 predetermined numbers. Use the 4 basic operands to reach the randomly generated target number.
; Author: Alanna Curran - G00309741

; Variables
;(define nums (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 25 50 75 100))
(define targetNum 425)
(define usableNum (list 100 50 25 19 1 1))
(define ops (list '+ '- '* '/))

;(remove-duplicates (permutations usableNum))
;(remove-duplicates (permutations ops))

; This gets a list of all the unique permutations of the ops and usableNum lists.
(define all-numbers (remove-duplicates (permutations usableNum)))
(define all-ops (cartesian-product ops ops ops ops ops))
; This generates too many nodes in the list.
;(cartesian-product all-ops all-numbers)

; This displays all unique permutations of the operators and numbers,
; It is not yet merging the two together though.
(define opsAndNum (list all-numbers all-ops))
(define all-variables (remove-duplicates opsAndNum))
;all-variables

; Found information about getting a list of numbers operated on.
; Add all numbers in the list together
(define (add-all L) (apply + L))

; Subtract all numbers in the list from eachother
(define (subtract-all L) (apply - L))

; Divide all numbers in the list into eachother
(define (divide-all L) (apply / L))

; Multiply all numbers in the list to eachother
(define (multiply-all L) (apply * L))

; Printing out the results
(add-all usableNum)
(subtract-all usableNum)
(divide-all usableNum)
(multiply-all usableNum)



; Code from class to test out RPN in racket.
; 2 1s are added to the front of the list and a -1 is added to the end.
; This represents RPN as from right to left RPN must start with an operator and end with 2 numbers to be operated on.
;(define start-perm (list -1 -1 -1 -1 1 1 1 1))
;(define X (remove-duplicates (permutations start-perm)))
;(define l (list -1 -1 -1 -1 1 1 1))

;(define make-rpn l)
;(append (list 1 1) l (list -1))

;(map make-rpn X)

;(define (valid-rpn? e [s 0])
;  (if (null? e)
;    (if (= s 1) #t #f)
;    (if (= (car e) 1)
;        (valid-rpn? (cdr e) (+ 1 s))
;        (valid-rpn? (cdr e) (- 1 s))
;        )))

;To do:
;loop through the permutations of the list w/ operands
;Output correct equations, discard rest.


