;; -*- lexical-binding: t; -*-
(defmacro oni:add-hooks (hook &rest functions)
  "Add to HOOK each function in FUNCTIONS."
  (declare (indent 1))
  `(progn
     ,@(mapcar (lambda (func) `(add-hook ,hook ,func)) functions)))

(defmacro oni:add-function-to-hooks (func &rest hooks)
  "Add FUNCTION to each hook in HOOKS."
  (declare (indent 1))
  `(progn
     ,@(mapcar (lambda (hook) `(add-hook ,hook ,func)) hooks)))

(defmacro oni:email (user at host dot com)
  "Turn arguments into an email address.
The resulting email address will look like: USER@HOST.COM, AT and
DOT are intentionally being skipped."
  (ignore at dot)
  (concat (symbol-name user) "@" (symbol-name host) "."
          (symbol-name com)))

(defmacro oni:eval-after-init (&rest body)
  "Defer execution of BODY until after Emacs init."
  (declare (indent 0))
  `(add-hook 'emacs-startup-hook #'(lambda () ,@body)))
