;; 1.18
;; iterative multiplication

(define (multiply a b)
  (define (multiply-iter a b i)
    (cond
     ((= b 0) i)
     ((even? b) (multiply-iter (double a) (halve b) i))
     (else (multiply-iter a (- b 1) (+ i a)))))
  (multiply-iter a b 0))

(define (double n)
  (* 2 n))
(define (halve n)
  (/ n 2))
(define (even? n)
  (= (remainder n 2) 0))
