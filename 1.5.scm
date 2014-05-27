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
