;;; new-theme.el --- My new theme

;; Copyright (C) 2012  Tom Willemsen

;; Author: Tom Willemsen <slash@drd>
;; Keywords: faces

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Just a new theme.

;;; Code:

(deftheme new
  "Created 2012-09-24")

(custom-theme-set-faces
 'new
 '(default ((t (:background "#111113" :foreground "#eeeeec"))))
 '(flymake-errline ((t (:background "#8b1a1a"))))
 '(flymake-infoline ((t (:background "#00008b"))))
 '(flymake-warnline ((t (:background "#9a3200"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#a9a9a9" :slant italic :weight bold))))
 '(font-lock-comment-face ((t (:foreground "#a9a9a9" :slant italic))))
 '(font-lock-doc-face ((t (:foreground "#9ad870"))))
 '(font-lock-function-name-face ((t (:foreground "#1793d1"))))
 '(font-lock-keyword-face ((t (:foreground "#cfce29"))))
 '(font-lock-string-face ((t (:foreground "#ffbd5c"))))
 '(font-lock-type-face ((t (:foreground "#1793d1" :bold t))))
 '(highlight ((t (:background "#171719"))))
 '(ido-subdir ((t (:foreground "#ff5d55"))))
 '(jabber-chat-prompt-foreign ((t (:foreground "#ff5d55"))))
 '(jabber-chat-prompt-local ((t (:foreground "#78a2c1"))))
 '(jabber-roster-user-online ((t (:foreground "#769ff2"))))
 '(link ((t (:foreground "#ffbb56" :underline t))))
 '(minibuffer-prompt ((t (:foreground "#78a2c1"))))
 '(mode-line ((t (:background "#222224" :foreground "#eeeeec" :box nil))))
 '(mode-line-inactive ((t (:background "#171719" :foreground "#999999" :box nil))))
 '(region ((t (:background "#2729b6"))))
 )

(provide-theme 'new)
;;; new-theme.el ends here
