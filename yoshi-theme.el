;;; yoshi-theme.el --- Theme named after my cat

;; Copyright (C) 2012  Tom Willemsen

;; Author: Tom Willemsen <tom@ryuslash.org>
;; Keywords: faces
;; Version: 1.0.0

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

;; Just a theme named after my cat.  He doesn't actually look like
;; this.

;;; Code:

(deftheme yoshi
  "Created 2012-09-24")

(custom-theme-set-faces
 'yoshi
 '(default ((t (:background "#111113" :foreground "#eeeeec"))))
 '(flymake-errline ((t (:background nil :underline (:color "#ff756e" :style wave)))))
 '(flymake-infoline ((t (:background nil :underline (:color "#78a2c1" :style wave)))))
 '(flymake-warnline ((t (:background nil :underline (:color "#ffbb56" :style wave)))))
 '(flyspell-duplicate ((t (:underline (:color "#ffbb56" :style wave)))))
 '(flyspell-incorrect ((t (:underline (:color "#ff756e" :style wave)))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#a9a9a9" :slant italic :weight bold))))
 '(font-lock-comment-face ((t (:foreground "#a9a9a9" :slant italic))))
 '(font-lock-constant-face ((t (:foreground "#93d8d8"))))
 '(font-lock-doc-face ((t (:foreground "#9ad870"))))
 '(font-lock-function-name-face ((t (:foreground "#78a2c1"))))
 '(font-lock-keyword-face ((t (:foreground "#cfce29"))))
 '(font-lock-string-face ((t (:foreground "#ffbd5c"))))
 '(font-lock-type-face ((t (:foreground "#78a2c1" :bold t))))
 '(font-lock-variable-name-face ((t (:foreground "#c39cc3"))))
 '(highlight ((t (:background "#171719"))))
 '(ido-subdir ((t (:foreground "#ff756e"))))
 '(italic ((t (:slant italic))))
 '(jabber-chat-prompt-foreign ((t (:foreground "#ff756e"))))
 '(jabber-chat-prompt-local ((t (:foreground "#78a2c1"))))
 '(jabber-roster-user-online ((t (:foreground "#769ff2"))))
 '(link ((t (:foreground "#ffbb56" :underline t))))
 '(magit-item-highlight ((t (:weight bold))))
 '(markdown-header-face-1 ((t (:height 1.5 :foreground "#78a2c1"))))
 '(markdown-header-face-2 ((t (:height 1.4 :foreground "#93d8d8"))))
 '(markdown-header-face-3 ((t (:height 1.3 :foreground "#9ad870"))))
 '(markdown-header-face-4 ((t (:height 1.2 :foreground "#c39cc3"))))
 '(markdown-header-face-5 ((t (:height 1.1 :foreground "#ff756e"))))
 '(markdown-header-face-6 ((t (:height 1.0 :foreground "#a9a9a9"))))
 '(minibuffer-prompt ((t (:foreground "#78a2c1"))))
 '(mode-line ((t (:background "#222224" :foreground "#eeeeec" :box nil))))
 '(mode-line-inactive ((t (:background "#171719" :foreground "#999999" :box nil))))
 '(org-level-1 ((t (:height 1.5 :foreground "#78a2c1"))))
 '(org-level-2 ((t (:height 1.4 :foreground "#93d8d8"))))
 '(org-level-3 ((t (:height 1.3 :foreground "#9ad870"))))
 '(org-level-4 ((t (:height 1.2 :foreground "#c39cc3"))))
 '(org-level-5 ((t (:height 1.1 :foreground "#ff756e"))))
 '(org-level-6 ((t (:height 1.0 :foreground "#a9a9a9"))))
 '(org-level-7 ((t (:height 1.0 :foreground "#ffbb56"))))
 '(org-level-8 ((t (:height 1.0 :foreground "#999999"))))
 '(region ((t (:background "#2729b6"))))
 '(rst-level-1 ((t (:height 1.5 :background nil))))
 '(rst-level-2 ((t (:height 1.4 :background nil))))
 '(rst-level-3 ((t (:height 1.3 :background nil))))
 '(rst-level-4 ((t (:height 1.2 :background nil))))
 '(rst-level-5 ((t (:height 1.1 :background nil))))
 '(rst-level-6 ((t (:height 1.0 :background nil))))
 '(term-color-black ((t (:background "#171719" :foreground "#999999"))))
 '(term-color-blue ((t (:background "#2729b6" :foreground "#78a2c1"))))
 '(term-color-cyan ((t (:background "#208181" :foreground "#93d8d8"))))
 '(term-color-green ((t (:background "#405c2e" :foreground "#9ad870"))))
 '(term-color-magenta ((t (:background "#5e325d" :foreground "#c39cc3"))))
 '(term-color-red ((t (:background "#973732" :foreground "#ff756e"))))
 '(term-color-white ((t (:background "#222224" :foreground "#a9a9a9"))))
 '(term-color-yellow ((t (:background "#835c0e" :foreground "#ffbb56"))))
 )

(provide-theme 'yoshi)
;;; yoshi-theme.el ends here
