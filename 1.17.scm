;; 1.17
;; recursive multiplication

(define (multiply a b)
  (cond ((= b 0) 0)
        ((even? b) (multiply (double a) (halve b)))
        (else (+ a  (multiply a (- b 1))))))

;; just so it can run
(define (double n)
  (* 2 n))
(define (halve n)
  (/ n 2))
(define (even? n)
  (= (remainder n 2) 0))
