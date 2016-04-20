
;; add color themes
(require-package 'material-theme)
(require-package 'rainbow-delimiters)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Use the cyberpunks color theme
(load-theme 'material t)

(provide 'init-colors)
