;; -*- lexical-binding: t; -*-

(require 'custom)

(defun make-screenshot (file-name)
  "Make a screenshot, saving the output to FILE-NAME."
  (message "Smile! }:-)")
  (sit-for 3)

  (let ((directory (file-name-directory file-name)))
    (princ (format "::debug::Creating directory: %s...\n" directory))
    (make-directory directory t)
    (princ (format "::debug::Creating directory: %s...DONE\n" directory)))

  (with-temp-buffer
    (princ (format "::debug::Taking screenshot, saving in: %s\n" file-name))
    (let ((exit-code (call-process-shell-command
                      (format "scrot --overwrite %s"
                              (shell-quote-argument file-name))
                      nil
                      '(t t))))
      (unless (and (= exit-code 0)
                   (= (point-min) (point-max)))
        (princ (format "Scrot output: %s\n" (buffer-string)))))))

(defun make-screenshot-run (theme-name script)
  (condition-case outer-err
      (progn
        (setq standard-output #'external-debugging-output
              network-security-protocol-checks nil)
        (princ (format "::debug::Using Emacs version: %s\n" emacs-version))

        (let* ((frame-resize-pixelwise t)
               (default-directory (getenv "GITHUB_WORKSPACE"))
               (script-file (expand-file-name script default-directory))
               success)
          (toggle-frame-maximized)

          (add-to-list 'custom-theme-load-path default-directory)
          (princ (format "::debug::Loading theme: %s\n" theme-name))
          (load-theme (intern theme-name) t)
          (princ (format "::debug::Loaded theme: %s\n" theme-name))

          (unwind-protect
              (with-timeout (300)
                (sit-for 3)

                (condition-case err
                    (progn
                      (load script-file)
                      (showcase default-directory))
                  (t (princ (format "::error::Encountered error while running showcase: %s\n" err))))
                (setq success t))
            (princ (format "::debug::Message buffer contents: \n%s\n"
                           (with-current-buffer (messages-buffer)
                             (buffer-string))))
            (kill-emacs (if success 0 1)))))
    (t (princ (format "::error::Encountered error: %s\n" outer-err)))))
