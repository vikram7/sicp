;;; The exponentiation algorithms in this section are based on performing
;;; exponentiation by means of repeated multiplication. In a similar way,
;;; one can perform integer multiplication by means of repeated addition.
;;; The following multiplication procedure (in which it is assumed that our
;;; language can only add, not multiply) is analogous to the expt procedure:

(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))

;;; This algorithm takes a number of steps that is linear in b. Now suppose
;;; we include, together with addition, operations double, which doubles an
;;; integer, and halve, which divides an (even) integer by 2. Using these,
;;; design a multiplication procedure analogous to fast-expt that uses a
;;; logarithmic number of steps.
;;;
;;; 4 * 3
;;; => (halve 4) * (double 3)
;;; => 2 * 6
;;; => (halve 2) * (double 6)
;;; => 1 * 12
;;; 3 * 5
;;; => mult-iter 3 3 4
;;; => mult-iter 3 6 2
;;; => mult-iter 3 12 1
;;; => mult-iter 15 12 0
;;; => 15

(define (mult a b)
  (mult-iter 0 a b))

(define (mult-iter accumulator a b)
  (cond (or (= b 0) accumulator)
        ((even? b) (mult-iter accumulator (double a) (halve b)))
        (else (mult-iter (+ accumulator a) a (- b 1)))))

