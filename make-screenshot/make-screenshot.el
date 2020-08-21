;; -*- lexical-binding: t; -*-

(require 'custom)

(defun make-screenshot (file-name)
  "Make a screenshot, saving the output to FILE-NAME."
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
         (script-file (expand-file-name script default-directory)))
    (toggle-frame-maximized)

    (add-to-list 'custom-theme-load-path default-directory)
    (load-theme (intern theme-name) t)

    (unwind-protect
        (with-timeout (300 (kill-emacs))
          (princ "Loading script: %s" script-file)
          (load script-file))
      (kill-emacs))))
