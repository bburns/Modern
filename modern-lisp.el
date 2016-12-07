;;; modern-lisp.el --- Some cleaner Lisp constructs
;;; Commentary:

; This module defines things that should be considered separate from the editor API.


;;; Code:

;;;; advice

(defalias 'advice-activate 'ad-activate)
(defalias 'advice-deactivate 'ad-deactivate)
(defalias 'advice-unadvise 'ad-unadvise)
(defalias 'advice-delete 'ad-unadvise)


;;;; control flow

(defalias 'prog 'progn)


(defmacro for (spec &rest body)
  "Simple numeric for loop.
SPEC is (INDEX START END [RESULT]), with END exclusive.
eg (for (i 4 7) (println i)) => 4 5 6
Compare with dotimes, eg (dotimes (i 3) (println i)) => 0 1 2"
  (let ((index (nth 0 spec))
        (start (nth 1 spec))
        (end (eval (nth 2 spec))) ; eval in case it's a fn with sideeffects
        (result (nth 3 spec)))
    `(let ((,index ,start))
       (while (< ,index ,end)
         ,@body
         (++ ,index))
       ,result)))

; test
; (for (i 4 7) (println i))
; c.f. (dotimes (i 3) (println i))


;;;; docstrings

(defalias 'docstring 'documentation)
(defalias 'docstring-face 'face-documentation)
(defun docstring-var (symbol)
  "Return the docstring for the given variable."
  (documentation-property symbol 'variable-documentation))

; test
; (docstring 'docstring)
; (docstring-face 'cursor)
; (docstring-var 'folder-emacs)


;;;; logic

; (ifchain modified asksave save) ; more semantic
(defalias 'ifchain 'and) ;.kill
(defalias 'all 'and)
(defalias 'any 'or)


(defalias '!= '/=)


;;;; macros

(defmacro me (form)
  "Macroexpand the given expression (no need to quote, as with macroexpand)"
  `(macroexpand (quote ,form)))
; (me (++ x))


;> patch macroexpand -> macro-expand. crazy
(defalias 'expand-macro 'macroexpand)
(defalias 'macro-expand 'macroexpand)


;;;; strings

; see also s.el

; note: use replace-string for replacing in a buffer
(defalias 'string-split 'split-string)
(defalias 'string-replace 's-replace)
(defalias 'string-replace-regexp 'replace-regexp-in-string)

(defun ascii (char)
  "Returns ASCII code for given character."
  (aref char 0))




;;;; symbols

; see also str fn
(defalias 'symbol-to-string 'symbol-name)

(alias unbind makunbound)
(alias unbind-fn fmakunbound)

(alias undefine makunbound)
(alias undefine-fn fmakunbound)



;;;; unary operators

(defalias '++ 'incf)
(defalias '-- 'decf)


;;; footer

(provide 'modern-lisp)

;;; modern-lisp.el ends here
