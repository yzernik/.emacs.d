
;; add company-jedi mode
(require-package 'company-jedi)

(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))

(add-hook 'python-mode-hook 'my/python-mode-hook)

(jedi:install-server)

(provide 'init-python)
