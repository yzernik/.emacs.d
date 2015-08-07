

;; parenthesis/brackets balancing and navigating
;; https://github.com/Fuco1/smartparens
(use-package smartparens
  :ensure t
  :config (progn (require 'smartparens-config)
		 (smartparens-global-mode t)
		 ;; highlight matching pairs
		 (show-smartparens-global-mode t)
		 (add-hook 'clojure-mode-hook 'smartparens-strict-mode)
		 (add-hook 'emacs-lisp-mode-hook 'smartparens-strict-mode)))

(provide 'init-parens)
