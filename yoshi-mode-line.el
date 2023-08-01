;;; yoshi-mode-line.el --- Custom mode-line settings for Yoshi theme  -*- lexical-binding: t; -*-

;; Copyright (C) 2023  Tom Willemse

;; Author: Tom Willemse <tom@ryuslash.org>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; This module defines the mode-line that is meant to be used with with the
;; ‘yoshi-theme’ theme. This module is heavily inspired by the ‘nano-modeline’
;; module from the ‘nano-emacs’ project.

;;; Code:

(defconst yoshi-mode-line-root
  (file-name-directory
   (or load-file-name
       (buffer-file-name)))
  "The directory where ‘yoshi-mode-line’ was loaded from.")

(defconst yoshi-mode-line-icons-dir
  (expand-file-name "icons" yoshi-mode-line-root)
  "The directory where ‘yoshi-mode-line’ stores its icons.")

;;; These files were all downloaded from the Font Awesome website.
(defun yoshi-mode-line-buffer-status-display ()
  "Display an icon for the status of the buffer."
  (cond
   ((derived-mode-p 'comint-mode 'eshell-mode)
    (propertize "term" 'display `(image :type svg :file ,(expand-file-name "terminal-solid.svg" yoshi-mode-line-icons-dir) :ascent center :height ,(window-default-font-height))))
   ((derived-mode-p 'wdired-mode)
    (propertize "wdired" 'display `(image :type svg :file ,(expand-file-name "folder-open-solid.svg" yoshi-mode-line-icons-dir) :ascent center :height ,(window-default-font-height))))
   ((derived-mode-p 'dired-mode)
    (propertize "dired" 'display `(image :type svg :file ,(expand-file-name "folder-solid.svg" yoshi-mode-line-icons-dir) :ascent center :height ,(window-default-font-height))))
   ((null buffer-file-name)
    (propertize "no-file" 'display `(image :type svg :file ,(expand-file-name "file-circle-minus-solid.svg" yoshi-mode-line-icons-dir) :ascent center :height ,(window-default-font-height))))
   ((buffer-modified-p)
    (propertize "modified" 'display `(image :type svg :file ,(expand-file-name "file-pen-solid.svg" yoshi-mode-line-icons-dir) :ascent center :height ,(window-default-font-height))))
   (buffer-read-only
    (propertize "read-only" 'display `(image :type svg :file ,(expand-file-name "file-shield-solid.svg" yoshi-mode-line-icons-dir) :ascent center :height ,(window-default-font-height))))
   ((derived-mode-p 'prog-mode)
    (propertize "code" 'display `(image :type svg :file ,(expand-file-name "file-code-solid.svg" yoshi-mode-line-icons-dir) :ascent center :height ,(window-default-font-height))))
   ((derived-mode-p 'text-mode)
    (propertize "text" 'display `(image :type svg :file ,(expand-file-name "file-lines-solid.svg" yoshi-mode-line-icons-dir) :ascent center :height ,(window-default-font-height))))
   (t
    (propertize "read-write" 'display `(image :type svg :file ,(expand-file-name "file-solid.svg" yoshi-mode-line-icons-dir) :ascent center :height ,(window-default-font-height))))))

(setq-default mode-line-format
              `("%e" mode-line-front-space (:eval (yoshi-mode-line-buffer-status-display)) ,@(cdr (default-value 'mode-line-format))))

(provide 'yoshi-mode-line)
;;; yoshi-mode-line.el ends here
