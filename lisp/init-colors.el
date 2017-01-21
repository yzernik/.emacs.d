
;; add color themes
(require-package 'dracula-theme)
(require-package 'rainbow-delimiters)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Set the color theme
(load-theme 'dracula t)


(provide 'init-colors)
