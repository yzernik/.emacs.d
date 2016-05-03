
;; add anaconda-mode
(require-package 'anaconda-mode)

;; add company-anaconda
(require-package 'company-anaconda)
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))
(add-hook 'python-mode-hook 'anaconda-mode)

(add-hook 'python-mode-hook 'anaconda-mode)

(provide 'init-python)
