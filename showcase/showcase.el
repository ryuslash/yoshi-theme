(defun showcase (working-directory)

  ;; (package-refresh-contents)
  ;; (package-install "haskell-mode")

  (find-file (expand-file-name "showcase/emacs-lisp-mode" working-directory))
  (make-screenshot (expand-file-name "screenshots/emacs-lisp.png" working-directory))

  ;; (find-file "showcase/haskell-mode")
  ;; (make-screenshot "screenshots/haskell.png")

  (find-file (expand-file-name "showcase/ruby-mode" working-directory))
  (make-screenshot (expand-file-name "screenshots/ruby.png" working-directory)))
