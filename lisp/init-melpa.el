
;; add MELPA
(add-to-list 'package-archives
         '("melpa" . "http://melpa.milkbox.net/packages/") t)

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))


(defun require-package (package &optional min-version)
  "Install given PACKAGE, optionally requiring MIN-VERSION."
  (if (package-installed-p package min-version)
      t
    (if (assoc package package-archive-contents)
	(progn
	  (package-refresh-contents)
	  (package-install package))
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))


(provide 'init-melpa)
