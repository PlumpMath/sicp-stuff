;; 1.10 Ackermann's function
(define (a x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (a (- x 1)
                 (a x (- y 1))))))

;; (a 1 10)
;; (a 0 (a 1 9))
;; (a 0 (a 0 (a 1 8)))
;; (a 0 (a 0 (a 0 (a 1 7))))
;; ...
;; eventuially (a 1 1) => 2
;; so
;; all the (a 0 2) => 2^2
;; so collapses to 2^10 => 1024

;;(a 0 (a 1 1))

;; (a 2 4)
;; (a 1 (a 2 3))
;; (a 1 (a 1 (a 2 2)))
;; (a 1 (a 1 (a 1 (a 2 1))))
;; 
(define (f n) (a 0 n))
;; (f n) is 2n

(define (g n) (a 1 n))
;; (g n) is 2^n

(define (h n) (a 2 n))
;; uhhhh
