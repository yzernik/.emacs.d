

(use-package sbt-mode
  :ensure
  :config
  (add-hook 'scala-mode-hook
	    '(lambda ()
	       (local-set-key (kbd "C-x '") 'sbt-run-previous-command)))
  (add-hook 'sbt-mode-hook
	    '(lambda ()
	       (setq compilation-skip-threshold 1)
	       (local-set-key (kbd "C-a") 'comint-bol)
	       (local-set-key (kbd "M-RET") 'comint-accumulate))))

(use-package ensime
  :defer 2
  :ensure
  :config
  (add-hook 'scala-mode-hook 'ensime-scala-mode-hook))

(provide 'init-scala)
;;; init-scala.el ends here
