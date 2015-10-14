;;; A function f is defined by the rule that 

;;; f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3
;;; ex.
;;; f(1) = 1
;;; f(2) = 2
;;; f(3) = f(2) + 2f(1) + 3f(0) => 2 + 2 + 0 => 4
;;; f(4) = f(3) + 2f(2) + 3f(1) => 4 + 2*2 + 3*1 => 4 + 4 + 3 => 11

;;; Write a procedure that computes f by means of a recursive process.

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1)) 
                 (* 2 (f (- n 2))) 
                 (* 3 (f (- n 3)))))))

;;; Write a procedure that computes f by means of an iterative process.

;;; (f n)
;;; (f-iter counter x y z)
;;; when counter = n, stop and return sum

(define (f n) (f-iter n 0 1 2))

(define (f-iter count x y z)
  (cond ((< count 0) count)
        ((= count 0) x)
        (else (f-iter (- count 1) y z (+ z (* 2 y) (* 3 x))))))

;;; x = f(n - 1)
;;; y = f(n - 2)
;;; z = f(n - 3)

;;; f(n) = x + 2y + 3z if n > 3
;;; f(n) = n if n < 3
;;; f(0) = 0
;;; f(1) = 1
;;; f(2) = 2

