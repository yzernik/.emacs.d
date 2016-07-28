
;; add color themes
;;(require-package 'cyberpunk)
(require-package 'rainbow-delimiters)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Use the deeper-blue color theme
(load-theme 'deeper-blue t)


(provide 'init-colors)
