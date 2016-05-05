
;; add column indicator
(require-package 'fill-column-indicator)

;; set fill column to 80
(setq-default fill-column 80)

(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
;(global-fci-mode 1)

(provide 'init-column-rule)
