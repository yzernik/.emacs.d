(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


;; add clojure-mode
(unless (package-installed-p 'clojure-mode)
  (package-refresh-contents))
;; add CIDER
(unless (package-installed-p 'cider)
  (package-install 'cider))
