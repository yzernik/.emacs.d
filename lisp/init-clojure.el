

;; add clojure-mode
(unless (package-installed-p 'clojure-mode)
  (package-refresh-contents))
;; add CIDER
(unless (package-installed-p 'cider)
  (package-install 'cider))


(provide 'init-clojure)
