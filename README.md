# Theory of Algorithms Project
## Racket Countdown Game
#### Alanna Curran

## Project Outline
Countdown-Number-Game.rkt is required to define a function that takes in two arguments.
- One will be a target number which is a randomly generated three digit integer between 101 and 999 inclusive.
- The other will be a list of 6 numbers selected at random from the list of 24 numbers: [1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,25,50,75,100].
This function should return a way of calculating the target number (or as near as possible) using the six numbers given in the second argument and the four basic mathematical operations: * / + -

## How to run:
- Install [DrRacket](https://download.racket-lang.org).
- Open Countdown-Number-Game.rkt in DrRacket.
- Click Run button in the top right corner of the window.
- (Optional) Enter your own equation with this code: 
```(calculate-RPN '(100 50 - 25 - 19 1 - 1 - *))```

## References:
1. [Apply an operation to a list](http://stackoverflow.com/questions/41512010/sum-items-in-list-racket)
1. [Countdown game in racket but only with 3 numbers](http://blog.hashcollision.org/?p=37)
1. [Countdown in Java](https://www.reddit.com/r/dailyprogrammer/comments/452omr/20160210_challenge_253_intermediate_countdown/)
1. [Merge 2 lists](http://stackoverflow.com/questions/12646888/scheme-merge-two-lists-into-one)
1. [Random Number generation](https://docs.racket-lang.org/reference/generic-numbers.html#%28part._.Random_.Numbers%29)
1. [Display Text](https://docs.racket-lang.org/reference/Writing.html)
1. [RPN Code](https://rosettacode.org/wiki/Parsing/RPN_calculator_algorithm#Racket)
1. [Lots of research from Racket Documentation](https://docs.racket-lang.org)