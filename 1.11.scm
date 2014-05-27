;; Recursive
;;f 1 = 1
;;f 2 = 2
;;f 3 = 3
;;f n = f(n-1) + 2f(n-2) + 3f(n-3)

(define (rec-f n)
  (cond
   ((<= n 3) n)
   (else (+ (rec-f (- n 1))
            (* 2 (rec-f (- n 2)))
            (* 3 (rec-f (- n 3)))))))

;; Iterative
(define (iter-f n)
  (define (iter back1 back2 back3 at)
    (define current (+ back1
                       (* 2 back2)
                       (* 3 back3)))
    (cond
     ((= at n) current)
     (else (iter current back1 back2 (+ at 1)))))
  (cond
   ((<= n 3) n)
   (else (iter 3 2 1 4))))
