(require 'package)


(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-melpa)


;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(require 'init-clojure)
(require 'init-ocaml)
(require 'init-scala)
(require 'init-markdown)
(require 'init-parens)


(provide 'init)
