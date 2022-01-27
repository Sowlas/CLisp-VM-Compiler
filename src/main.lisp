


(defun main ()
  (require "vm.lisp")
  (require "eval.lisp")
  (require "tests.lisp"))

(ext:saveinitem "vm-lisp" :quiet t :init-function 'main :executable t :norc t)

(ext:exit)
