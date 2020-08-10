;; -*- lexical-binding: t; -*-

;; (server-start)

(require 'custom)

(defun my-make-screenshot ()
  (let ((standard-output #'external-debugging-output))
    (add-to-list 'custom-theme-load-path "/src")
    (load-theme 'yoshi t)

    (find-file "/emacs-lisp.el")

    (princ "Taking screenshot!")

    (force-window-update)
    (redisplay)

    (princ (shell-command-to-string "scrot \"/screenshot/screenshot.png\""))

    (princ
     (with-current-buffer (messages-buffer)
       (buffer-substring-no-properties (point-min) (point-max))))

    (kill-emacs)))
