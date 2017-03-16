#lang racket

; Variables
;(define nums (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 25 50 75 100))
(define targetNum 425)
(define usableNum (list 100 50 25 19 1 1))
(define ops (list '+ '- '* '/))

;(remove-duplicates (permutations usableNum))
;(remove-duplicates (permutations ops))

(define all-numbers (remove-duplicates (permutations usableNum)))
(define all-ops (cartesian-product ops ops ops ops ops))
; This generates too many nodes in the list.
;(cartesian-product all-ops all-numbers)