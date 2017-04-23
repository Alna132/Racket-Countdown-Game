#lang racket

; Countdown game developed in the Racket Programming Language.
; Aim: Take in 6 random numbers from a list of 24 predetermined numbers. Use the 4 basic operands to reach the randomly generated target number.
; Author: Alanna Curran - G00309741

; Variables
(define nums (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 25 50 75 100))
; Target number that the 6 numbers below should equal to after being operated upon.
(define targetNum 425)
; List of 6 numbers chosen from nums.
(define usableNum (list 100 50 25 19 1 1))
; ops will be used in the equation for actually operating on numbers.
(define ops (list + - * /))
; opsOutput is for displaying the equation for the viewer
(define opsOutput (list '+ '- '* '/))
; This generates a random operator from the 4 above.
(define randomOperator1 (list-ref opsOutput (random 4)))
(define randomOperator2 (list-ref opsOutput (random 4)))
(define randomOperator3 (list-ref opsOutput (random 4)))
(define randomOperator4 (list-ref opsOutput (random 4)))
(define randomOperator5 (list-ref opsOutput (random 4)))
; Creating a list of 5 operators that are randomly generated.
(define all-randOps (list randomOperator1 randomOperator2 randomOperator3 randomOperator4 randomOperator5))

;(remove-duplicates (permutations usableNum))
;(remove-duplicates (permutations ops))

; This gets a list of all the unique permutations of the ops and usableNum lists.
(define all-numbers (remove-duplicates (permutations usableNum)))
(define all-ops (cartesian-product opsOutput opsOutput opsOutput opsOutput opsOutput))
; This generates too many nodes in the list.
;(cartesian-product all-ops all-numbers)

; This displays all unique permutations of the operators and numbers,
; It is not yet merging the two together though.
;(define opsAndNum (list all-numbers all-ops))
;(define all-variables (remove-duplicates opsAndNum))
;all-variables

(display "Merge list of numbers and operaters into one list") (newline)
; Found code on stackoverflow about merging 2 lists together
(define (interleave lOps lNum)
  (cond
    [(empty? lOps) lNum]
    [else (cons (first lOps)(interleave lNum (rest lOps)))]))
(interleave all-randOps usableNum)
;(interleave all-ops all-numbers)

(newline)
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
(display "ADD all numbers in the list:") (newline)
(add-all usableNum)
(newline)(display "SUBTRACT all numbers in the list:") (newline)
(subtract-all usableNum)
(newline)(display "DIVIDE all numbers in the list:") (newline)
(divide-all usableNum)
(newline)(display "MULTIPLY all numbers in the list:") (newline)
(multiply-all usableNum)

(display "Summed list list:") (newline)
; Sum the new list
(define sumList (interleave all-randOps usableNum))
apply(sumList)

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


