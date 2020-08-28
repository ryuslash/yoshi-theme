(defun showcase ()
  (princ "Turning off menu-bar-mode\n")
  (menu-bar-mode -1)
  (princ "Turning off tool-bar-mode\n")
  (tool-bar-mode -1)
  (princ "Turning off scroll-bar-mode\n")
  (scroll-bar-mode -1)

  (find-file "/emacs-lisp.el")

  (princ (format "Taking screenshot into: %s\n"
                 (expand-file-name "screenshot.png" default-directory)))

  (make-screenshot (expand-file-name "screenshot.png" default-directory)))
