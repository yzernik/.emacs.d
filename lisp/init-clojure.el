
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; clojure dev environment ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; clojure syntax support
;; https://github.com/clojure-emacs/clojure-mode
(use-package clojure-mode
  :ensure t
  :config
  (add-hook 'clojure-mode-hook 'yas-minor-mode))

;; clojure IDE
;; https://github.com/clojure-emacs/cider
(use-package cider
  :ensure t
  :config (progn (add-hook 'clojure-mode-hook 'cider-mode)
		 (add-hook 'clojure-mode-hook 'cider-turn-on-eldoc-mode)
		 (add-hook 'cider-repl-mode-hook 'subword-mode)
		 (setq cider-annotate-completion-candidates t
		       cider-prompt-for-symbol nil)))

;; clojure refactor library
;; https://github.com/clojure-emacs/clj-refactor.el
(use-package clj-refactor
  :ensure t
  :config (progn (setq cljr-suppress-middleware-warnings t)
		 (add-hook 'clojure-mode-hook (lambda ()
						(clj-refactor-mode 1)
						(cljr-add-keybindings-with-prefix "C-c C-m")))))

;; show build errors and linting in place in buffer
;; http://www.flycheck.org/
;; Clojure specific library:
;; https://github.com/clojure-emacs/squiggly-clojure
(use-package flycheck
  :ensure t
  :config (progn (use-package flycheck-clojure ; load clojure specific flycheck features
		   :ensure t
		   :config (flycheck-clojure-setup))
		 ;; initialize flycheck
		 (use-package popup
		   :ensure t)
		 (use-package flycheck-pos-tip
		   :ensure t)
		 (setq flycheck-display-errors-function 'flycheck-pos-tip-error-messages)
		 (global-flycheck-mode)))

(provide 'init-clojure)
;;; init-clojure ends here
