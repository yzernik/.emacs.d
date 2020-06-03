
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
(require 'init-thrift)
(require 'init-protobuf)
(require 'init-hcl)
(require 'init-dockerfile)
(require 'init-rust)


(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (rust-mode dockerfile-mode thrift terraform-mode yaml-mode puppet-mode company-jedi js2-mode hy-mode markdown-mode tuareg cider clojure-mode magit fill-column-indicator aggressive-indent rainbow-delimiters dracula-theme paredit auto-complete company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
