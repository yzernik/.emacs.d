
;; add clojure-mode
(require-package 'clojure-mode)

(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)

;; add CIDER
(require-package 'cider)

(provide 'init-clojure)
