;;; Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is
;;; using applicative-order evaluation or normal-order evaluation. He defines the following two
;;; procedures:

(define (p) (p))
(define (test x y)
  (if (=x 0)
    0
    y))

;;; Then he evaluates the expression:

(test 0 (p))

;;; What behavior will Ben observe with an interpreter that uses applicative-order evaluation? What
;;; behavior will he observe with an interpreter that uses normal-order evaluation? Explain your answer.
;;; (Assume that the evaluation rule for the special form if is the same whether the interpreter is using
;;; normal or applicative order: The predicate expression is evaluated first, and the result determines
;;; whether to evaluate the consequent or the alternative expression.)

;;; Applicative-order evaluation: This can also be called "evaluate the arguments and then apply."
;;; If we evaluated all the arguments here, `(define (p) (p))` would never get evaluated since
;;; it's getting run over an infinite loop here:

;;; (test 0 (p))
;;; (test 0 (p))
;;; (test 0 (p))

;;; In applicative-order evaluation, a procedure's arguments are evaluated before a procedure's
;;; body gets run

;;; Normal-order evaluation: This can also be called "fully expand and then reduce." If we expand
;;; the expression here, `(test 0 (p))` would return 0 since we don't have to evaluate (p) in order
;;; to reduce:

;;; (test 0 (p))
;;; (if (= 0 0) 0 (p))
;;; (if #t 0 (p))
;;; 0

;;; In normer-order evaluation, a procedure's arguments are evaluated when they get used within
;;; the procedure's body
