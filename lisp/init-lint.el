
;; add flycheck linter
(require-package 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init-lint)
