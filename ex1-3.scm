;;; Define a procedure that takes three numbers as arguments and returns the sum of the
;;; squares of the two larger numbers.

(define (sum-of-squares x y)
  (+ (* x x) (* y y)))

(define (greater x y)
  (if (> x y) x y))

(define (top-sum x y z)
  (if (= x (greater y z))
    (sum-of-squares x (greater y z))
    (sum-of-squares y (greater x z))))
