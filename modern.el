;;; modern.el --- Cleaner Emacs Lisp, Emacs API, and User Interface
;;; Commentary:
;;; Code:

(let ((load-path (cons "." load-path))
      (require 'modern-lisp)
      (require 'modern-api)
      (require 'modern-ui)
      ))

;;; Provide

(provide 'modern)

;;; modern.el ends here

