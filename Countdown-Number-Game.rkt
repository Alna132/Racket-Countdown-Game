#lang racket

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



; Code from class to test out RPN in racket.
; 2 1s are added to the front of the list and a -1 is added to the end.
; This represents RPN as from right to left RPN must start with an operator and end with 2 numbers to be operated on.
(define start-perm (list -1 -1 -1 -1 1 1 1 1))
(define X (remove-duplicates (permutations start-perm)))
(define l (list -1 -1 -1 -1 1 1 1))

(define make-rpn l)
(append (list 1 1) l (list -1))

(map make-rpn X)

(define (valid-rpn? e [s 0])
  (if (null? e)
    (if (= s 1) #t #f)
    (if (= (car e) 1)
        (valid-rpn? (cdr e) (+ 1 s))
        (valid-rpn? (car e) (- 1 s))
        )))



