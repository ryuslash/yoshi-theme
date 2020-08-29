(defun showcase (working-directory)
  (princ "Turning off menu-bar-mode\n")
  (toggle-menu-bar-mode-from-frame -1)
  (princ "Turning off tool-bar-mode\n")
  (tool-bar-mode -1)
  (princ "Turning off scroll-bar-mode\n")
  (scroll-bar-mode -1)

  (find-file "/emacs-lisp.el")

  (let ((file-name (expand-file-name "screenshot.png" working-directory)))
    (princ (format "Taking screenshot into: %s\n" file-name))
    (make-screenshot file-name)))
