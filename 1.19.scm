;; 1.19
;; logarithmic fibonacci

;; did a bunch of math got p' = 1 q' = 1 for the double fibonacci
;; this is obviously wrong as (fib 4) => 1
;; I've aparently forgotten how to math.

(define (fib n)
  (fib-iter 1 0 0 1 n))
(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   1
                   1
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))
