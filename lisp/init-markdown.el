

;; add markdown-mode
(require-package 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

(provide 'init-markdown)
