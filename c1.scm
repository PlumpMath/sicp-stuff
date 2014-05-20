;; 1.3
(define (square x) (* x x))

(define (sum-of-3-squares a b c)
  (+ (square a)
     (square b)
     (square c)))

;; 1.5
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;;(test 0 (p))

;; if applicative-order 0 is evaluated to be 0, then (p) is evaluated
;; which returns (p) which itself gets evaluated to return (p) and the
;; interpreter constantly keeps replacing (p) with (p) infinately
;; looping (before the if test ever happens)

;; in the nominal order case the expression is expanded from
;; (test 0 (p))
;; to
;; (if (= 0 0) 0 (y))
;; then the if is expanded by the if rule which evaluates (= 0 0)
;; which has no more expantions so it is reduced to #t which turns the
;; expression into just
;; 0 and the (p) is never evaluated so it doesn't infinately loop!

;; verified that this same code in haskell just returns 0 but in
;; scheme infinately loops!

;; 1.6
;; Keeps recuring forever n ever n ever.

;; 1.7
;; small and large numbers
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; (square (sqrt 0.001)) ]=> 1.7 which is pretty bad
;; (sqrt 10000000)
