(defun showcase (working-directory)
  (princ "Turning off menu-bar-mode\n")
  (menu-bar-mode -1)
  (princ "Turning off tool-bar-mode\n")
  (tool-bar-mode -1)
  (princ "Turning off scroll-bar-mode\n")
  (scroll-bar-mode -1)

  (find-file "/emacs-lisp.el")

  (let ((file-name (expand-file-name "screenshot.png" working-directory)))
    (princ (format "Taking screenshot into: %s\n" file-name))
    (make-screenshot file-name)))
