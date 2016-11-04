(require 'package)


;; Start the emacs window maximized, without welcome screen.
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq inhibit-startup-message t)

(setq split-height-threshold nil)
(setq split-width-threshold 160)

;; Disable the toolbar and scrollbar.
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Display line and column numbers.
(setq line-number-mode t)
(setq column-number-mode t)

;; show trailing whitespace
(setq-default show-trailing-whitespace t)

;; use ssh for tramp-mode
(setq tramp-default-method "ssh")

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
(require 'init-git)

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
(require 'init-puppet)
(require 'init-yaml)
(require 'init-terraform)
(require 'init-dockerfile)


(provide 'init)
