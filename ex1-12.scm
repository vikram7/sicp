;;; The following pattern of numbers is called Pascal’s triangle.
;;;     1
;;;   1 2 1
;;;  1 3 3 1
;;; 1 4 6 4 1

;;; The numbers at the edge of the triangle are all 1, and each number inside
;;; the triangle is the sum of the two numbers above it. Write a procedure that
;;; computes elements of Pascal’s triangle by means of a recursive process.

;;; row 1:     1
;;; row 2:    1 1
;;; row 3:   1 2 1
;;; row 4:  1 3 3 1
;;; row 5: 1 4 6 4 1

;;; (pascal-calc 5 3) => (pascal-calc 4 2) + (pascal-calc 4 3)
;;; (pascal-calc 4 2) => (pascal-calc 3 1) + (pascal-calc 3 2)
;;; (pascal-calc 4 3) => (pascal-calc 3 2) + (pascal-calc 3 3)

;;; (pascal-calc 1 x) => 1
;;; (pascal-calc x 1) => 1
;;; (pascal-calc row column)
;;; (+ (pascal-calc (- row 1) (- column 1)) (pascal-calc (- row 1) column))


(define (pascal-calc row column)
  (cond ((> column row) 0)
        ((< column 0) 0)
        ((= column 1) 1)
        (else (+ (pascal-calc (- row 1) (- column 1))
                 (pascal-calc (- row 1) column)))))
