;; 1.20

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

;; iterative in applicative order.
;; (gcd 206 40)
;; (gcd 40 (remainder 206 40))
;; (gcd 40 6)
;; (gcd 6 (remainder 40 6))
;; (gcd 6 4)
;; (gcd 4 (remainder 6 4))
;; (gcd 4 2)
;; (gcd 2 (remainder 4 2))
;; (gcd 2 0)
;; 2
;; 4 remainder evaluations.


;; Normal order expantion
;; (gcd 206 40)

;; (if (= 40 0) 206 (gcd 40 (remainder 206 40)))

;; (gcd 40 (remainder 206 40))

;; (if (= (remainder 206 40) 0)
;;   40
;;   (gcd (remainder 206 40) (remainder 40 (remainder 206 40))))

;; eval remainder to eval the = (count 1)

;; (gcd (remainder 206 40) (remainder 40 (remainder 206 40)))

;; (if (= (remainder 40 (remainder 206 40)) 0)
;;  (remainder 206 40)
;;  (gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))

;; eval 2 remainders to eval = (count 3)
;; (gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206
;; 40) (remainder 40 (remainder 206 40))))

;; eval 4 to do the next eval
;; double the number of remainders for so 1 + 2 + 4 + 8 = 15
;; remainders instead of 4
