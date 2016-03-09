
;; add auto-complete
(require-package 'company)
(require-package 'auto-complete)

(if (display-graphic-p)
    (global-company-mode)
  (global-auto-complete-mode))

(provide 'init-auto-complete)
