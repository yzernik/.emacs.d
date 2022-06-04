
;; add rust-mode
(require-package 'rust-mode)

(provide 'init-rust)


;; The Rust style guide recommends spaces rather than tabs for indentation;
;; to follow the recommendation add this to your init.el, which forces
;; indentation to always use spaces.
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))


;; The rust-format-buffer function will format your code with rustfmt if
;; installed. By default, this is bound to C-c C-f.
(setq rust-format-on-save t)


;; You can toggle prettification of your code by running
;; M-x prettify-symbols-mode. If you'd like to automatically
;; enable this for all rust files, add the following to your init.el.
(add-hook 'rust-mode-hook
          (lambda () (prettify-symbols-mode)))
