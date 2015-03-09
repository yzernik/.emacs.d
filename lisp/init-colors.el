

;; add color themes
(require-package 'sublime-themes)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'hickey t)


(provide 'init-colors)
