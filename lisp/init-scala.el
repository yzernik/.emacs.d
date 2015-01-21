

;; add Scala ensime
(require-package 'ensime)


;; If necessary, add JDK_HOME or JAVA_HOME to the environment
;; (setenv "JDK_HOME" "/path/to/jdk")
;; If necessary, make sure "sbt" and "scala" are in the PATH environment
;; (setenv "PATH" (concat "/path/to/sbt/bin:" (getenv "PATH")))
;; (setenv "PATH" (concat "/path/to/scala/bin:" (getenv "PATH")))
;; You can also customize `ensime-inf-get-project-root' and `ensime-inf-get-repl-cmd-line'
;;(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)


(provide 'init-scala)
