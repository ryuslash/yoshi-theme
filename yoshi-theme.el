;;; yoshi-theme.el --- Theme named after my cat

;; Copyright (C) 2012  Tom Willemsen

;; Author: Tom Willemsen <tom@ryuslash.org>
;; Keywords: faces
;; Version: 3.1.0

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
 '(flycheck-error-face ((t (:foreground nil :underline (:color "#e09591" :style wave)))))
 '(flycheck-warning-face ((t (:foreground nil :underline (:color "#ffbb56" :style wave)))))
 '(flymake-errline ((t (:background nil :underline (:color "#e09591" :style wave)))))
 '(flymake-infoline ((t (:background nil :underline (:color "#78a2c1" :style wave)))))
 '(flymake-warnline ((t (:background nil :underline (:color "#ffbb56" :style wave)))))
 '(flyspell-duplicate ((t (:foreground nil :underline (:color "#ffbb56" :style wave)))))
 '(flyspell-incorrect ((t (:foreground nil :underline (:color "#e09591" :style wave)))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#999999" :slant italic :weight bold))))
 '(font-lock-comment-face ((t (:foreground "#a9a9a9" :slant italic))))
 '(font-lock-constant-face ((t (:foreground "#93d8d8"))))
 '(font-lock-doc-face ((t (:foreground "#9ad870"))))
 '(font-lock-function-name-face ((t (:foreground "#c39cc3"))))
 '(font-lock-keyword-face ((t (:foreground "#cfce29"))))
 '(font-lock-string-face ((t (:foreground "#ffbd5c"))))
 '(font-lock-type-face ((t (:foreground "#78a2c1" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "#e09591"))))
 '(font-lock-warning-face ((t (:foreground "#ff9800"))))
 '(highlight ((t (:background "#171719"))))
 '(highlight-80+ ((t (:underline (:color "#e09591" :style wave) :background nil))))
 '(identica-stripe-face ((t (:background "#222224"))))
 '(identica-uri-face ((t (:foreground "#ffbb56" :underline t))))
 '(identica-username-face ((t (:foreground "#78a2c1" :weight bold :underline nil))))
 '(ido-subdir ((t (:foreground "#e09591"))))
 '(italic ((t (:slant italic))))
 '(jabber-chat-prompt-foreign ((t (:foreground "#e09591"))))
 '(jabber-chat-prompt-local ((t (:foreground "#78a2c1"))))
 '(jabber-chat-prompt-system ((t (:foreground "#cfce29"))))
 '(jabber-rare-time-face ((t (:foreground "#63a0a0" :weight bold))))
 '(jabber-roster-user-online ((t (:foreground "#769ff2"))))
 '(link ((t (:foreground "#ffbb56" :underline t))))
 '(link-visited ((t (:foreground "#ee82ee" :underline t))))
 '(magit-item-highlight ((t (:weight bold :background nil))))
 '(markdown-header-face-1 ((t (:foreground "#78a2c1"))))
 '(markdown-header-face-2 ((t (:foreground "#93d8d8"))))
 '(markdown-header-face-3 ((t (:foreground "#9ad870"))))
 '(markdown-header-face-4 ((t (:foreground "#c39cc3"))))
 '(markdown-header-face-5 ((t (:foreground "#e09591"))))
 '(markdown-header-face-6 ((t (:foreground "#a9a9a9"))))
 '(minibuffer-prompt ((t (:foreground "#78a2c1"))))
 '(mode-line ((t (:background "#222224" :foreground "#eeeeec" :box nil))))
 '(mode-line-inactive ((t (:background "#171719" :foreground "#999999" :box nil))))
 '(org-agenda-calendar-sexp ((t (:foreground "#cfce29"))))
 '(org-agenda-current-time ((t (:foreground "#ff9800" :weight bold))))
 '(org-agenda-date ((t (:foreground "#63a0a0"))))
 '(org-agenda-date-today ((t (:foreground "#93d8d8" :underline t))))
 '(org-agenda-date-weekend ((t (:foreground "#518484"))))
 '(org-agenda-structure ((t (:foreground "#78a2c1"))))
 '(org-checkbox-statistics-done ((t (:foreground "#406868"))))
 '(org-checkbox-statistics-todo ((t (:foreground "#518484"))))
 '(org-document-title ((t (:foreground "#ffbb56" :height 1.5))))
 '(org-headline-done ((t (:foreground "#a9a9a9" :strike-through t))))
 '(org-level-1 ((t (:foreground "#78a2c1"))))
 '(org-level-2 ((t (:foreground "#93d8d8"))))
 '(org-level-3 ((t (:foreground "#9ad870"))))
 '(org-level-4 ((t (:foreground "#c39cc3"))))
 '(org-level-5 ((t (:foreground "#e09591"))))
 '(org-level-6 ((t (:foreground "#a9a9a9"))))
 '(org-level-7 ((t (:foreground "#ffbb56"))))
 '(org-level-8 ((t (:foreground "#999999"))))
 '(org-scheduled ((t (:foreground "#b26900"))))
 '(org-scheduled-previously ((t (:foreground "#e09591" :bold t))))
 '(org-scheduled-today ((t (:foreground "#ffbb56" :underline t))))
 '(org-time-grid ((t (:foreground "#ffbb56"))))
 '(pp^L-highlight ((t (:box nil :foreground "#555557"))))
 '(region ((t (:background "#2729b6"))))
 '(rst-level-1 ((t (:background nil))))
 '(rst-level-2 ((t (:background nil))))
 '(rst-level-3 ((t (:background nil))))
 '(rst-level-4 ((t (:background nil))))
 '(rst-level-5 ((t (:background nil))))
 '(rst-level-6 ((t (:background nil))))
 '(sh-heredoc ((t (:foreground "#ffbb56"))))
 '(slime-repl-input-face ((t (:foreground "#828281"))))
 '(slime-repl-inputed-output-face ((t (:foreground "#a5a5a4"))))
 '(slime-repl-output-face ((t (:foreground "#eeeeec"))))
 '(slime-repl-prompt-face ((t (:foreground "#78a2c1"))))
 '(term-color-black ((t (:background "#171719" :foreground "#999999"))))
 '(term-color-blue ((t (:background "#2729b6" :foreground "#78a2c1"))))
 '(term-color-cyan ((t (:background "#208181" :foreground "#93d8d8"))))
 '(term-color-green ((t (:background "#405c2e" :foreground "#9ad870"))))
 '(term-color-magenta ((t (:background "#5e325d" :foreground "#c39cc3"))))
 '(term-color-red ((t (:background "#973732" :foreground "#e09591"))))
 '(term-color-white ((t (:background "#222224" :foreground "#a9a9a9"))))
 '(term-color-yellow ((t (:background "#835c0e" :foreground "#ffbb56"))))

 )

(provide-theme 'yoshi)
;;; yoshi-theme.el ends here
