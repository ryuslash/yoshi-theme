;;; yoshi-theme.el --- Theme named after my cat

;; Copyright (C) 2012  Tom Willemsen

;; Author: Tom Willemsen <tom@ryuslash.org>
;; Keywords: faces
;; Version: 2.1.0

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

(require 'color)

(deftheme yoshi
  "Created 2012-09-24")

(defun yoshi-fmt-color (rgb)
  (format "#%02x%02x%02x" (car rgb) (cadr rgb) (caddr rgb)))

(defun yoshi-inclusive-color-gradient (start stop step-number)
  (let ((start-rgb (color-name-to-rgb start))
        (stop-rgb (color-name-to-rgb stop)))
  `(,start
    ,@(mapcar (lambda (color) (apply 'color-rgb-to-hex color))
              (color-gradient start-rgb stop-rgb (- step-number 2)))
    ,stop)))

(defun yoshi-make-color-variations (name base-rgb)
  (let* ((split-rgb (yoshi-split-rgb base-rgb))
         (colors
          (yoshi-inclusive-color-gradient
           (yoshi-fmt-color split-rgb)
           (yoshi-fmt-color (mapcar (lambda (c) (round (* c 0.548))) split-rgb)) 4))
         (idx 0))
    (mapcar
     (lambda (color)
       (list (intern (concat (symbol-name name) "-"
                             (number-to-string (setq idx (1+ idx)))))
             color))
     colors)))

(defun yoshi-make-colors (&rest list)
  (apply 'nconc
         (mapcar (lambda (i)
                   (yoshi-make-color-variations (car i) (cadr i)))
                 list)))

(defun yoshi-split-rgb (rgb)
  (list
   (/ (logand #xff0000 rgb) #x10000)
   (/ (logand #x00ff00 rgb) #x100)
   (logand #x0000ff rgb)))

(defmacro with-yoshi-colors (&rest body)
  `(let ,(yoshi-make-colors
            '(black   #x222224)
            '(white   #xeeeeec)
            '(blue    #x78a2c1)
            '(cyan    #x75bdbd)
            '(green   #x4ac94f)
            '(magenta #xc68ac6)
            '(red     #xff837d)
            '(yellow  #xa7a721)
            '(orange  #xff9800))
     ,@body))

(with-yoshi-colors
 (custom-theme-set-faces
  'yoshi

  `(default ((t (:background "#111113" :foreground ,white-1))))
  `(flycheck-error-face ((t (:foreground nil :underline (:color ,red-2 :style wave)))))
  `(flycheck-warning-face ((t (:foreground nil :underline (:color ,orange-2 :style wave)))))
  `(flymake-errline ((t (:background nil :underline (:color ,red-2 :style wave)))))
  `(flymake-infoline ((t (:background nil :underline (:color ,blue-2 :style wave)))))
  `(flymake-warnline ((t (:background nil :underline (:color ,orange-2 :style wave)))))
  `(flyspell-duplicate ((t (:foreground nil :underline (:color ,orange-2 :style wave)))))
  `(flyspell-incorrect ((t (:foreground nil :underline (:color ,red-2 :style wave)))))
  `(font-lock-comment-delimiter-face ((t (:foreground ,white-4 :slant italic :weight bold))))
  `(font-lock-comment-face ((t (:foreground ,white-3 :slant italic))))
  `(font-lock-constant-face ((t (:foreground ,cyan-1))))
  `(font-lock-doc-face ((t (:foreground ,green-1))))
  `(font-lock-function-name-face ((t (:foreground ,magenta-1))))
  `(font-lock-keyword-face ((t (:foreground ,yellow-1))))
  `(font-lock-string-face ((t (:foreground ,orange-2))))
  `(font-lock-type-face ((t (:foreground ,blue-2 :weight bold))))
  `(font-lock-variable-name-face ((t (:foreground ,red-2))))
  `(font-lock-warning-face ((t (:foreground ,orange-2 :weight bold))))
  `(highlight ((t (:background ,black-1))))
  `(highlight-80+ ((t (:underline (:color ,red-3 :style wave) :background nil))))
  `(ido-subdir ((t (:foreground ,red-2))))
  `(italic ((t (:slant italic :underline nil))))
  `(jabber-chat-prompt-foreign ((t (:foreground ,blue-1))))
  `(jabber-chat-prompt-local ((t (:foreground ,cyan-3))))
  `(jabber-chat-prompt-system ((t (:foreground ,yellow-1))))
  `(jabber-rare-time-face ((t (:foreground ,cyan-2 :weight bold))))
  `(jabber-roster-user-online ((t (:foreground ,blue-1))))
  `(link ((t (:foreground ,orange-1 :underline t))))
  `(link-visited ((t (:foreground ,orange-2 :underline t))))
  `(magit-item-highlight ((t (:weight bold :background nil))))
  `(markdown-header-face-1 ((t (:foreground ,blue-1))))
  `(markdown-header-face-2 ((t (:foreground ,cyan-1))))
  `(markdown-header-face-3 ((t (:foreground ,green-1))))
  `(markdown-header-face-4 ((t (:foreground ,magenta-1))))
  `(markdown-header-face-5 ((t (:foreground ,red-1))))
  `(markdown-header-face-6 ((t (:foreground ,white-3))))
  `(minibuffer-prompt ((t (:foreground ,blue-1))))
  `(mode-line ((t (:background ,black-1 :foreground ,white-1 :box nil))))
  `(mode-line-inactive ((t (:background ,black-4 :foreground ,white-4 :box nil))))
  `(org-agenda-calendar-sexp ((t (:foreground ,yellow-1))))
  `(org-agenda-current-time ((t (:foreground ,orange-2 :weight bold))))
  `(org-agenda-date ((t (:foreground ,cyan-2))))
  `(org-agenda-date-today ((t (:foreground ,cyan-1 :underline t))))
  `(org-agenda-date-weekend ((t (:foreground ,cyan-3))))
  `(org-agenda-structure ((t (:foreground ,blue-1))))
  `(org-checkbox-statistics-done ((t (:foreground ,cyan-4))))
  `(org-checkbox-statistics-todo ((t (:foreground ,cyan-3))))
  `(org-document-title ((t (:foreground ,orange-2 :height 1.5))))
  `(org-headline-done ((t (:foreground ,white-3 :strike-through t))))
  `(org-level-1 ((t (:foreground ,blue-1))))
  `(org-level-2 ((t (:foreground ,cyan-1))))
  `(org-level-3 ((t (:foreground ,green-1))))
  `(org-level-4 ((t (:foreground ,magenta-1))))
  `(org-level-5 ((t (:foreground ,red-1))))
  `(org-level-6 ((t (:foreground ,yellow-1))))
  `(org-level-7 ((t (:foreground ,orange-1))))
  `(org-level-8 ((t (:foreground ,magenta-2))))
  `(org-scheduled ((t (:foreground ,orange-3))))
  `(org-scheduled-previously ((t (:foreground ,red-1 :bold t))))
  `(org-scheduled-today ((t (:foreground ,orange-1 :underline t))))
  `(org-time-grid ((t (:foreground ,orange-1))))
  `(pp^L-highlight ((t (:box nil :foreground ,white-4))))
  `(region ((t (:background ,blue-4))))
  `(rst-level-1 ((t (:background nil :foreground ,blue-1))))
  `(rst-level-2 ((t (:background nil :foreground ,cyan-1))))
  `(rst-level-3 ((t (:background nil :foreground ,green-1))))
  `(rst-level-4 ((t (:background nil :foreground ,magenta-1))))
  `(rst-level-5 ((t (:background nil :foreground ,red-1))))
  `(rst-level-6 ((t (:background nil :foreground ,yellow-1))))
  `(sh-heredoc ((t (:foreground ,orange-1))))
  `(slime-repl-input-face ((t (:foreground ,white-4))))
  `(slime-repl-inputed-output-face ((t (:foreground ,white-3))))
  `(slime-repl-output-face ((t (:foreground ,white-1))))
  `(slime-repl-prompt-face ((t (:foreground ,blue-1))))
  `(term-color-black ((t (:background ,black-4 :foreground ,black-1))))
  `(term-color-blue ((t (:background ,blue-4 :foreground ,blue-1))))
  `(term-color-cyan ((t (:background ,cyan-4 :foreground ,cyan-1))))
  `(term-color-green ((t (:background ,green-4 :foreground ,green-1))))
  `(term-color-magenta ((t (:background ,magenta-4 :foreground ,magenta-1))))
  `(term-color-red ((t (:background ,red-4 :foreground ,red-1))))
  `(term-color-white ((t (:background ,white-4 :foreground ,white-1))))
  `(term-color-yellow ((t (:background ,yellow-4 :foreground ,yellow-1))))

  ))

(provide-theme 'yoshi)
;;; yoshi-theme.el ends here
