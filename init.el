(require 'package)


;; Start the emacs window maximized, without welcome screen.
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq inhibit-startup-message t)

;; Disable the toolbar.
(tool-bar-mode -1)

;; Display line and column numbers.
(setq line-number-mode t)
(setq column-number-mode t)

;; Use MELPA
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-melpa)


;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(require 'init-auto-complete)
(require 'init-parens)
(require 'init-colors)
(require 'init-sounds)
(require 'init-indent)
;;(require 'init-lint)
(require 'init-column-rule)

;;----------------------------------------------------------------------------
;; Load configs for specific languages
;;----------------------------------------------------------------------------
(require 'init-c)
(require 'init-clojure)
(require 'init-ocaml)
(require 'init-markdown)
(require 'init-hy)
(require 'init-javascript)
(require 'init-python)


(provide 'init)
