;;; package --- Summary

;;; Commentary:
;;; My personal emacs config

;; Initialize emacs package manager:
(require 'package)


;;; Code:
;; Setup community package archive
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package', a convenience wrapper to the package manager
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)


;; Start the emacs window maximized, without welcome screen.
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq inhibit-startup-message t)

;; Display line and column numbers.
(setq line-number-mode t)
(setq column-number-mode t)


;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-auto-complete)
(require 'init-clojure)
(require 'init-ocaml)
(require 'init-scala)
(require 'init-markdown)
(require 'init-hy)
(require 'init-parens)
(require 'init-colors)


(provide 'init)
;;; init.el ends here
