;;; Prove that Fib(n) is the closest integer to Phi^n / sqrt(5), where
;;; Phi = (1 + sqrt(5)) / 2
;;; Hint: Let Psi = (1 - sqrt(5)) / 2
;;; Use induction and the definition of the Fibonacci numbers to prove that
;;; Fib(n) = (Phi ^ n - Psi ^ n) / sqrt(5)

;;; Fib(n) = Fib(n - 1) + Fib(n - 2)

;;; Fib(0) = (Phi ^ 0 - Psi ^ 0) / sqrt(5) => 0
;;; Fib(1) = (Phi ^ 1 - Psi ^ 1) / sqrt(5)
;;; => (1/2 + sqrt(5)/2 - 1/2 + sqrt(5)/2) / sqrt(5) => 1
;;; Fib(2) = Fib(0) + Fib(1)

;;; Fib(n) = (Phi ^ n - Psi ^ n) / sqrt(5)
;;; Fib(n - 1) = (Phi ^ (n - 1) - Psi ^ (n - 1)) / sqrt(5)

;;; Prove that Fib(n+1) = (Phi ^ (n + 1) - Psi ^ (n + 1)) / sqrt(5)

;;; Fib(n+1) = Fib(n) + Fib(n-1)
;;; (Phi ^ n - Psi ^ n) / sqrt(5) + (Phi ^ (n - 1) - Psi ^ (n - 1))/ sqrt(5)
;;; (Phi ^ n + Phi ^ (n - 1) - Psi ^ n - Psi ^ (n - 1)) / sqrt(5)
;;; ((Phi ^ n + Phi ^ (n - 1)) - (Psi ^ n + Psi ^ (n - 1)) / sqrt(5)

