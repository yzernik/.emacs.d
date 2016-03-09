

;; add color themes
(require-package 'cyberpunk-theme)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Use the cyberpunks color theme
(load-theme 'cyberpunk t)

(provide 'init-colors)
