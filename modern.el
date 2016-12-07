;;; modern.el --- cleaner Lisp, Emacs API, crossref, keys, menu, toolbar
;;; Commentary:
;;; Code:
;;;; Submodules

; Load all modern modules

(let ((load-path (cons "." load-path))

      (require 'crossref)

      (require 'modern-lisp)
      ; (require 'modern-api)
      ; (require 'modern-lib)
      ; (require 'modern-orgmode) ;. merge this in here - it's just part of emacs

      ; (require 'modern-keys)
      ; (require 'modern-mouse)
      ; (require 'modern-menu)
      ; (require 'modern-toolbar)
      ; (require 'modern-modal)
      ))


;;; Provide

(provide 'modern)

;;; modern.el ends here

