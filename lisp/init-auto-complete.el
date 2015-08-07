

;; modern auto-completion tool
;; http://company-mode.github.io/
(use-package company
  :ensure t
  :config (progn (setq company-idle-delay .2)
		 (bind-key "C-n" 'company-select-next company-active-map)
		 (bind-key "C-p" 'company-select-previous company-active-map)
		 (global-company-mode)))

(provide 'init-auto-complete)
