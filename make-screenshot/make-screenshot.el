;; -*- lexical-binding: t; -*-

(require 'custom)

(defun make-screenshot (file-name)
  "Make a screenshot, saving the output to FILE-NAME."
  (message "Smile! }:-)")
  (force-window-update)
  (redisplay)

  (with-temp-buffer
    (let ((exit-code (call-process-shell-command
                      (format "scrot --overwrite %s"
                              (shell-quote-argument file-name))
                      nil
                      '(t t))))
      (unless (and (= exit-code 0)
                   (= (point-min) (point-max)))
        (princ (format "Scrot output: %s\n"
                       (buffer-substring-no-properties (point-min) (point-max))))))))

(defun make-screenshot-run (theme-name script)
  (let* ((standard-output #'external-debugging-output)
         (frame-resize-pixelwise t)
         (default-directory (getenv "GITHUB_WORKSPACE"))
         (script-file (expand-file-name script default-directory))
         success)
    (toggle-frame-maximized)

    (add-to-list 'custom-theme-load-path default-directory)
    (princ (format "Loading theme: %s\n" theme-name))
    (load-theme (intern theme-name) t)

    (unwind-protect
        (with-timeout (300 (kill-emacs 2))
          (load script-file)
          (showcase default-directory)
          (setq success t))
      (kill-emacs (if success 0 1)))))
