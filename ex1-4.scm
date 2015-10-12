;;; Observe that our model of evaluation allows for combinations whose
;;; operators are compound expressions. Use this observation to describe
;;; the behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;;; If b is greater than zero, the if clause returns + and otherwise returns -
;;; That way, we get the operand in (operand a b) based on (> b 0)
;;; b > 0 => (+ a b)
;;; b <= 0 => (- a b)

