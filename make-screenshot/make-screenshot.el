;; -*- lexical-binding: t; -*-

;; (server-start)

(require 'custom)

(defun my-make-screenshot (output-directory)
  (let ((standard-output #'external-debugging-output))
    (add-to-list 'custom-theme-load-path "/github/workspace")
    (load-theme 'yoshi t)

    (find-file "/emacs-lisp.el")

    (princ "Taking screenshot!")

    (force-window-update)
    (redisplay)

    (princ (shell-command-to-string
            (format "scrot --overwrite %s/screenshot.png"
                    (shell-quote-argument output-directory))))

    (princ
     (with-current-buffer (messages-buffer)
       (buffer-substring-no-properties (point-min) (point-max))))

    (kill-emacs)))
