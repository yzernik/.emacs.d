;; for flex files
(autoload 'flex-mode "flex-mode" "flex mode" t)
(setq auto-mode-alist (append '(("\\.l$" . flex-mode))
auto-mode-alist))