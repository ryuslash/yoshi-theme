;;; yoshi-theme.el --- Theme named after my cat

;; Copyright (C) 2012  Tom Willemsen

;; Author: Tom Willemsen <tom@ryuslash.org>
;; Keywords: faces
;; Version: 5.0.0

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

(let ((lblack     "#a5a5a4") (dblack     "#111113")
      (lwhite     "#eeeeec") (dwhite     "#222224")
      (lred       "#bf7d7d") (dred       "#734a4a")
      (lorange    "#bfa47d") (dorange    "#73634a")
      (lyellow    "#b2bf7d") (dyellow    "#6b734a")
      (lgreen     "#8abf6d") (dgreen     "#52734a")
      (lturquoise "#7dbf97") (dturquoise "#4a735b")
      (lcyan      "#7dbfbf") (dcyan      "#4a7373")
      (lblue      "#6d97bf") (dblue      "#4a5b73")
      (lpurple    "#8a7dbf") (dpurple    "#524a73")
      (lmagenta   "#b27dbf") (dmagenta   "#6b4a73")
      (lpink      "#bf6da4") (dpink      "#734a63"))
  (custom-theme-set-faces
   'yoshi

   `(default ((t (:background ,dblack :foreground ,lwhite))))
   `(diff-added ((t (:background ,dgreen :inherit unspecified))))
   `(diff-changed ((t (:background ,dyellow))))
   `(diff-removed ((t (:background ,dred :inherit unspecified))))
   `(diff-hl-change ((t (:foreground ,lyellow :inherit diff-changed))))
   `(diff-hl-delete ((t (:foreground ,lred :inherit diff-removed))))
   `(diff-hl-insert ((t (:foreground ,lgreen :inherit diff-added))))
   `(flycheck-error-face ((t (:inherit unspecified :underline (:color ,lred :style wave)))))
   `(flycheck-warning-face ((t (:inherit unspecified :underline (:color ,lorange :style wave)))))
   `(flymake-errline ((t (:background unspecified :underline (:color ,lred :style wave)))))
   `(flymake-infoline ((t (:background unspecified :underline (:color ,lblue :style wave)))))
   `(flymake-warnline ((t (:background unspecified :underline (:color ,lorange :style wave)))))
   `(flyspell-duplicate ((t (:inherit unspecified :underline (:color ,lorange :style wave)))))
   `(flyspell-incorrect ((t (:inherit unspecified :underline (:color ,lred :style wave)))))
   `(font-lock-builtin-face ((t (:foreground ,lcyan))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,lblack :weight bold :inherit unspecified))))
   `(font-lock-comment-face ((t (:foreground ,lblack :slant italic))))
   `(font-lock-constant-face ((t (:foreground ,lred))))
   `(font-lock-doc-face ((t (:foreground ,lgreen :inherit unspecified))))
   `(font-lock-function-name-face ((t (:foreground ,lpurple))))
   `(font-lock-keyword-face ((t (:foreground ,lyellow))))
   `(font-lock-string-face ((t (:foreground ,lturquoise))))
   `(font-lock-type-face ((t (:foreground ,lorange))))
   `(font-lock-variable-name-face ((t (:foreground ,lblue))))
   `(font-lock-warning-face ((t (:foreground ,lorange :weight bold :inherit unspecified))))
   `(gnus-button ((t (:foreground ,lorange :underline t))))
   `(gnus-group-mail-3 ((t (:inherit gnus-group-mail-3-empty :weight bold))))
   `(gnus-group-mail-3-empty ((t (:foreground ,lcyan))))
   `(gnus-group-news-3 ((t (:inherit gnus-group-news-3-empty :weight bold))))
   `(gnus-group-news-3-empty ((t (:foreground ,lblue))))
   `(gnus-header-content ((t (:foreground ,lwhite :slant italic))))
   `(gnus-header-name ((t (:foreground ,lpurple))))
   `(gnus-header-subject ((t (:foreground ,lcyan))))
   `(gnus-summary-normal-read ((t (:foreground ,lblack))))
   `(gnus-summary-normal-unread ((t (:foreground ,lwhite))))
   `(gnus-summary-selected ((t (:foreground ,lwhite :weight bold))))
   `(highlight ((t (:background ,dwhite ))))
   `(highlight-80+ ((t (:underline (:color ,lred :style wave) :background unspecified))))
   `(identica-stripe-face ((t (:background ,dwhite))))
   `(identica-uri-face ((t (:foreground ,lorange :underline t))))
   `(identica-username-face ((t (:foreground ,lblue :weight bold :underline unspecified))))
   `(ido-subdir ((t (:foreground ,lred))))
   `(italic ((t (:slant italic))))
   `(jabber-chat-prompt-foreign ((t (:foreground ,lred :slant italic))))
   `(jabber-chat-prompt-local ((t (:foreground ,lblue :slant italic))))
   `(jabber-chat-prompt-system ((t (:foreground ,lgreen :slant italic))))
   `(jabber-rare-time-face ((t (:foreground ,lwhite :underline t))))
   `(jabber-roster-user-away ((t (:foreground ,lgreen :slant italic))))
   `(jabber-roster-user-error ((t (:foreground ,lred :slant italic))))
   `(jabber-roster-user-offline ((t (:foreground ,lblack :slant italic))))
   `(jabber-roster-user-online ((t (:foreground ,lblue))))
   `(link ((t (:foreground ,lorange :underline t))))
   `(link-visited ((t (:foreground ,lmagenta :underline t))))
   `(magit-branch ((t (:foreground ,lpink :weight bold :inherit unspecified))))
   `(magit-item-highlight ((t (:slant italic  :inherit unspecified))))
   `(magit-section-title ((t (:foreground ,lturquoise :inherit unspecified :underline (:color ,lcyan)))))
   `(markdown-header-face-1 ((t (:inherit org-level-1))))
   `(markdown-header-face-2 ((t (:inherit org-level-2))))
   `(markdown-header-face-3 ((t (:inherit org-level-3))))
   `(markdown-header-face-4 ((t (:inherit org-level-4))))
   `(markdown-header-face-5 ((t (:inherit org-level-5))))
   `(markdown-header-face-6 ((t (:inherit org-level-6))))
   `(minibuffer-prompt ((t (:foreground ,lblue))))
   `(mode-line ((t (:background ,dwhite :foreground ,lwhite :box unspecified))))
   `(mode-line-inactive ((t (:weight normal :background ,dblack :foreground ,lblack :box unspecified :inherit unspecified))))
   `(org-agenda-calendar-sexp ((t (:foreground ,lyellow))))
   `(org-agenda-current-time ((t (:foreground ,lorange :weight bold))))
   `(org-agenda-date ((t (:foreground ,dcyan))))
   `(org-agenda-date-today ((t (:foreground ,lcyan :slant italic))))
   `(org-agenda-date-weekend ((t (:foreground ,lcyan))))
   `(org-agenda-structure ((t (:foreground ,lblue))))
   `(org-checkbox-statistics-done ((t (:foreground ,dcyan))))
   `(org-checkbox-statistics-todo ((t (:foreground ,lcyan))))
   `(org-document-title ((t (:foreground ,lorange :height 1.5))))
   `(org-headline-done ((t (:foreground ,lblack :strike-through t))))
   `(org-level-1 ((t (:foreground ,lred))))
   `(org-level-2 ((t (:foreground ,lorange))))
   `(org-level-3 ((t (:foreground ,lyellow))))
   `(org-level-4 ((t (:foreground ,lgreen))))
   `(org-level-5 ((t (:foreground ,lturquoise))))
   `(org-level-6 ((t (:foreground ,lcyan))))
   `(org-level-7 ((t (:foreground ,lblue))))
   `(org-level-8 ((t (:foreground ,lpurple))))
   `(org-scheduled ((t (:foreground ,dorange))))
   `(org-scheduled-previously ((t (:foreground ,lred :bold t))))
   `(org-scheduled-today ((t (:foreground ,lorange :slant italic))))
   `(org-time-grid ((t (:foreground ,lorange))))
   `(outline-1 ((t (:inherit org-level-1))))
   `(outline-2 ((t (:inherit org-level-2))))
   `(outline-3 ((t (:inherit org-level-3))))
   `(outline-4 ((t (:inherit org-level-4))))
   `(outline-5 ((t (:inherit org-level-5))))
   `(outline-6 ((t (:inherit org-level-6))))
   `(outline-7 ((t (:inherit org-level-7))))
   `(outline-8 ((t (:inherit org-level-8))))
   `(pp^L-highlight ((t (:box unspecified :foreground ,lblack))))
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,lred))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,lpink))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,lorange))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,lyellow))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,lgreen))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,lturquoise))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,lcyan))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,lblue))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,lpurple))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,lmagenta))))
   `(rainbow-delimiters-unmatched-face ((t (:background ,dred :foreground unspecified))))
   `(region ((t (:background ,dblue))))
   `(rst-level-1 ((t (:background unspecified))))
   `(rst-level-2 ((t (:background unspecified))))
   `(rst-level-3 ((t (:background unspecified))))
   `(rst-level-4 ((t (:background unspecified))))
   `(rst-level-5 ((t (:background unspecified))))
   `(rst-level-6 ((t (:background unspecified))))
   `(sh-heredoc ((t (:foreground ,lorange))))
   `(show-paren-match ((t (:background ,dwhite :weight bold))))
   `(show-paren-mismatch ((t (:background unspecified :foreground ,lred))))
   `(slime-repl-input-face ((t (:foreground ,lblack))))
   `(slime-repl-inputed-output-face ((t (:foreground ,lblack))))
   `(slime-repl-output-face ((t (:foreground ,lwhite))))
   `(slime-repl-prompt-face ((t (:foreground ,lblue))))
   `(term-color-black ((t (:background ,dblack :foreground ,lblack))))
   `(term-color-blue ((t (:background ,dblue :foreground ,lblue))))
   `(term-color-cyan ((t (:background ,dcyan :foreground ,lcyan))))
   `(term-color-green ((t (:background ,dgreen :foreground ,lgreen))))
   `(term-color-magenta ((t (:background ,dmagenta :foreground ,lmagenta))))
   `(term-color-red ((t (:background ,dred :foreground ,lred))))
   `(term-color-white ((t (:background ,dwhite :foreground ,lwhite))))
   `(term-color-yellow ((t (:background ,dyellow :foreground ,lyellow))))

   )

  (custom-theme-set-variables
   'yoshi
   '(rainbow-delimiters-max-face-count 10)
   `(fci-rule-color ,dred)))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'yoshi)
;;; yoshi-theme.el ends here

;; Local Variables:
;; eval: (rainbow-mode 1)
;; End:
