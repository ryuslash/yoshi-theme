;; -*- lexical-binding: t; -*-

;; (server-start)

(require 'custom)

(defun my-make-screenshot (theme-name output-file)
  (let ((standard-output #'external-debugging-output)
        (frame-resize-pixelwise t))
    (add-to-list 'custom-theme-load-path "/github/workspace")
    (load-theme (intern theme-name) t)

    (find-file "/emacs-lisp.el")

    (princ "Taking screenshot!")

    (toggle-frame-maximized)
    (force-window-update)
    (redisplay)

    (with-temp-buffer
      (let ((exit-code (call-process-shell-command
                        (format "scrot --overwrite %s"
                                (shell-quote-argument output-file))
                        nil
                        '(t t))))
        (princ (format "Scrot exit code: %d\n" exit-code)))
      (princ (format "Scrot output: %s\n"
                     (buffer-substring-no-properties (point-min) (point-max)))))

    (princ
     (with-current-buffer (messages-buffer)
       (buffer-substring-no-properties (point-min) (point-max))))

    (kill-emacs)))
