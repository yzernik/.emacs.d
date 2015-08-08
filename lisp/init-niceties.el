

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; non-clojure dev niceties ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; git wrapper / advanced in emacs git menu
;; https://github.com/magit/magit
(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

;; project management/navigation
;; https://github.com/bbatsov/projectile
(use-package projectile
  :ensure t
  :config (projectile-global-mode))

;; efficient navigating of viewable buffer
;; https://github.com/abo-abo/avy
(use-package avy
  :ensure t
  :bind ("C-c SPC" . avy-goto-word-1))

;; fuzzy autocompletion of emacs commands (better M-x)
;; https://github.com/nonsequitur/smex
(use-package smex
  :ensure t
  :config (smex-initialize)
  :bind (("M-x" . smex)
	 ("M-X" . smex-major-mode-commands)))

;; semi-fuzzy file finding (better find-file and autocompletion)
;; http://emacswiki.org/emacs/InteractivelyDoThings
(use-package ido
  :ensure t
  :config (progn (setq
		  ;; Match letters in order throughout string, not just prefix
		  ido-enable-prefix nil
		  ;; Be able to create new buffers without complaint
		  ido-create-new-buffer 'always
		  ;; Use ido where ever possible
		  ido-everywhere 1
		  ;; if exact match not found, look for other files containing these characters
		  ido-enable-flex-matching t
		  ;; don't leave the current directory if we don't find the file we typed
		  ido-auto-merge-work-directories-length -1)
		 ;; Show available completions in the minibuffer automatically
		 (icomplete-mode 1)
		 ;; Turn on ido-mode
		                  (ido-mode t)))

(provide 'init-niceties)
;;; init-niceties.el ends here
