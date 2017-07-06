;;; kolor-theme.el --- Emacs theme with a light background.

;; Copyright (C) 2014 , mathekeks

;; Author: mathekeks
;; 
;; Version: 0.1
;; Package-Requires: ((emacs "24"))
;; Created with emacs-theme-generator, https://github.com/mswift42/theme-creator.


;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;; The faces are structured like this
;; text:  The usual text color
;; mark1: keywords that are supposed to stand out, because they are an important
;;        part of the content (headlines, keywords, type names, ....)
;; mark2: keywords that are not so important because they are not part of the
;;        content, but rather some sort of annotation (preprocessor, tags ...)
;; mark3: textblocks that are special (strings, quotes, ...)
;; error: text and keywords that represent any sort of error or warning
;; selected: text that is selected or marked by searches etc.
;;           this is a little bit special sinc there are only two variations
;;           active (the currently active search item) and inactive
;;
;; All of these faces may have variations, which may be combined 
;; dark : the dark version of the color
;; light: the light version of the color
;; bold : bold text
;; italic: italic text
;; underline: underlined text
;; undercurl: underlined with wavy line
;; small: Text size reduced to 80%
;; big1: Text size 120%
;; big2: text size 140%
;; big3: text size 160%
;; sb: backgroung is set to the c-bg-special color
;;
;; Additionally there are some special faces like OK, date, ...
;;; Code:

(deftheme kolors)

(let ((class '((class color) (min-colors 89)))
      (c-text-dark "gray30")
      (c-text "gray50")
      (c-text-light "gray70")
      (c-bg "white")
      (c-bg-special "ivory")
      (c-bg-error "yellow")
      (c-mark1-dark "RoyalBlue3")
      (c-mark1 "RoyalBlue2")
      (c-mark1-light "SkyBlue1")
      (c-mark2-dark"SeaGreen4")
      (c-mark2 "SeaGreen3")
      (c-mark2-light "SeaGreen1")
      (c-mark3-dark "red3")
      (c-mark3 "red3")
      (c-mark3-light "red1")
      (c-error-dark "red")
      (c-error "red")
      (c-error-light "red")
      (c-selected-active "SkyBlue1")
      (c-selected-inactive "gray85")
      (c-UNSET "#00FFFF")
      (c-T "#FF00FF"))
      (let ((k--text `(t (:background ,c-bg :foreground ,c-text-dark :bold nil :italic nil :underline nil)))
	    (k--text-light `(t (:foreground ,c-text-light)))
	    (k--text-bold `(t (:foreground ,c-text :bold t)))
	    (k--text-dark-bold `(t (:foreground ,c-text-dark :bold t)))
	    (k--text-bold-small `(t (:foreground ,c-text-light :bold t :height 0.8)))
	    (k--text-small `(t (:foreground ,c-text-light :bold t :height 0.8)))
	    (k--text-big1 `(t (:foreground ,c-text :height 1.2)))
	    (k--text-big2 `(t (:foreground ,c-text :height 1.4)))
	    (k--text-big3 `(t (:foreground ,c-text :height 1.6)))
	    (k--text-sb `(t (:foeground ,c-text :background ,c-bg-special)))
	    (k--mark1 `(t (:foreground ,c-mark1 :bold nil)))
	    (k--mark1-big1 `(t (:foreground ,c-mark1 :bold nil :height 1.2)))
	    (k--mark1-big2 `(t (:foreground ,c-mark1 :bold nil :height 1.4)))
	    (k--mark1-big3 `(t (:foreground ,c-mark1 :bold nil :height 1.6)))
	    (k--mark1-bold `(t (:foreground ,c-mark1 :bold t)))
	    (k--mark1-underline`(t (:foreground ,c-mark1 :underline t)))
	    (k--mark1-light `(t (:foreground ,c-mark1-light)))
	    (k--mark1-light-bold `(t (:foreground ,c-mark1-light :bold t)))
	    (k--mark1-dark-bold `(t (:foreground ,c-mark1-dark :bold t)))
	    (k--mark2 `(t (:foreground ,c-mark2 )))
	    (k--mark2-light `(t (:foreground ,c-mark2-light )))
	    (k--mark2-bold `(t (:foreground ,c-mark2 :bold t)))
	    (k--mark2-italic `(t (:foreground ,c-mark2-dark :italic t)))
	    (k--mark3 `(t (:foreground ,c-mark3)))
	    (k--mark3-italic `(t (:foreground ,c-mark3 :italic t)))
	    (k--error-light `(t (:foreground ,c-error-light :bold t)))
	    (k--error-light-underline`(t (:foreground ,c-error-light :underline t)))
	    (k--selected `(t (:foreground ,c-bg :background ,c-selected-active)))
	    (k--selected-inactive `(t (:foreground ,c-bg :background ,c-selected-inactive)))
	    (k--italic `(t (:italic t)))
	    (k--bold `(t (:bold t)))
	    (k--underline `(t (:underline t)))
	    (k--undercurl `(t (:underline ,`(:style wave))))
	    (k--undercurl-error `(t (:underline ,`(:style wave :color ,c-error))))
	    (k--undercurl-light `(t (:underline ,`(:style wave :color ,c-text-light))))
	    (k--scratch `(t (:strike-trough t)))
	    (k--big1 `(t (:height 1.2)))
	    (k--big2 `(t (:height 1.4)))
	    (k--big3 `(t (:height 1.6)))
	    (k--UNSET `(t (:background ,c-UNSET :foreground ,c-text)))
	    (k--UNSET `(t (:background ,c-T :foreground ,c-text))))
	(custom-theme-set-faces
	 'kolors
	 ;;; default fontlock
	 `(default (,k--text))
	 `(font-lock-builtin-face (,k--mark1-dark-bold))
	 `(font-lock-comment-face (,k--text-light))
	 `(font-lock-comment-delimiter-face (,k--text-light))
	 `(font-lock-negation-char-face (,k--UNSET))
	 `(font-lock-reference-face (,k--UNSET))
	 `(font-lock-constant-face (,k--bold))
	 `(font-lock-doc-face (,k--text-light))
	 `(font-lock-function-name-face (,k--text))
	 `(font-lock-keyword-face (,k--mark1))
	 `(font-lock-string-face (,k--mark3-italic))
	 `(font-lock-type-face (,k--mark1))
	 `(font-lock-variable-name-face (,k--text))
	 `(font-lock-warning-face (,k--error-light))
	 `(font-lock-preprocessor-face (,k--mark2-italic))
	 ;;; emacs basics
	 `(region (,k--selected))
	 `(highlight (,k--UNSET))
	 `(hl-line (,k--UNSET))
	 `(fringe (,k--text))
	 `(cursor (,k--text))
	 `(show-paren-match-face (,k--selected))
	 `(isearch (,k--UNSET))
	 `(header-line (,k--text-bold-small))
	 `(mode-line (,k--text))
	 `(mode-line-inactive (,k--text-light))
	 `(mode-line-buffer-id (,k--text))
	 `(mode-line-highlight (,k--UNSET))
	 `(mode-line-emphasis (,k--UNSET))
	 `(vertical-border (,k--UNSET))
	 `(minibuffer-prompt (,k--text))
	 `(default-italic (,k--italic))
	 `(link (,k--UNSET))
	 ;;; DIRED
	 ;;; WHITESPACE-MODE
;	 `(whitespace-hspace (,k--UNSET))
;   `(whitespace-indentation (,k--UNSET))
   `(whitespace-line (,k--undercurl-light))
;   `(whitespace-tab (,k--UNSET))
;   `(whitespace-trailing (,k--error-light))
         ;;; MAGIT
	 
         ;;; Markdown
	 `(markdown-blockquote-face (,k--italic))
	 `(markdown-bold-face (,k--bold))
	 `(markdown-comment-face (,k--text-light))
	 `(markdown-footnote-face (,k--UNSET))
	 `(markdown-gfm-checkbox-face (,k--UNSET))
	 `(markdown-header-delimiter-face (,k--text-light))
	 `(markdown-header-face (,k--UNSET))
	 `(markdown-header-face-1 (,k--text-big3))
	 `(markdown-header-face-2 (,k--text-big2))
	 `(markdown-header-face-3 (,k--text-big1))
	 `(markdown-header-face-4 (,k--text-bold))
	 `(markdown-header-face-5 (,k--text-bold))
	 `(markdown-header-face-6 (,k--text-bold))
	 `(markdown-header-rule-face (,k--text-bold))
	 ;; seems not to be used
	 ;;`(markdown-highlight-face (,k--UNSET))
	 `(markdown-inline-code-face (,k--text-sb))
	 `(markdown-italic-face (,k--italic))
 	 `(markdown-language-keyword-face (,k--text-light))
	 `(markdown-line-break-face (,k--UNSET))
	 `(markdown-link-face (,k--mark1))
	 `(markdown-link-title-face (,k--mark3))
	 `(markdown-list-face (,k--text-light))
	 `(markdown-markup-face (,k--text-light))
	 `(markdown-math-face (,k--mark3))
	 `(markdown-metadata-key-face (,k--UNSET))
	 `(markdown-metadata-value-face (,k--UNSET))
	 `(markdown-missing-link-face (,k--error-light-underline))
	 `(markdown-pre-face (,k--text-sb))
	 `(markdown-reference-face (,k--mark1-light))
	 `(markdown-strike-through-face (,k--UNSET))
	 `(markdown-url-face (,k--mark1-underline))
	 ;;; ORG
	 `(org-agenda-date-today (,k--UNSET))
	 `(org-agenda-structure (,k--UNSET))
	 `(org-archived (,k--UNSET))
	 `(org-checkbox (,k--UNSET))
	 `(org-date (,k--UNSET))
	 `(org-deadline-announce (,k--UNSET))
	 `(org-done (,k--mark2-bold))
	 `(org-formula (,k--UNSET))
	 `(org-headline-done (,k--UNSET))
	 `(org-hide (,k--UNSET))
	 `(org-level-1 (,k--mark1-big3))
	 `(org-level-2 (,k--mark1-big2))
	 `(org-level-3 (,k--mark1-big1))
	 `(org-level-4 (,k--mark1-bold))
	 `(org-level-5 (,k--mark1-bold))
	 `(org-level-6 (,k--mark1-bold))
	 `(org-level-7 (,k--mark1-bold))
	 `(org-level-8 (,k--mark1-bold))
	 `(org-link (,k--mark1-underline))
	 `(org-scheduled (,k--UNSET))
	 `(org-scheduled-previously (,k--UNSET))
	 `(org-scheduled-today (,k--UNSET))
	 `(org-sexp-date (,k--UNSET))
	 `(org-special-keyword (,k--UNSET))
	 `(org-table (,k--UNSET))
	 `(org-tag (,k--mark2-italic))
	 `(org-meta-line (,k--mark2-italic))
	 `(org-document-title (,k--bold))
	 `(org-document-info (,k--bold))
	 `(org-document-info-keyword (,k--mark2-italic))
	 `(org-time-grid (,k--UNSET))
	 `(org-todo (,k--error-light))
	 `(org-upcoming-deadline (,k--UNSET))
	 `(org-warning (,k--UNSET))
	 `(org-verbatim (,k--UNSET))
	 `(org-column (,k--UNSET))
	 `(org-column-title (,k--UNSET))
	 `(org-mode-line-clock (,k--UNSET))
	 `(org-mode-line-clock-overrun (,k--UNSET))
	 `(org-ellipsis (,k--UNSET))
	 `(org-footnote (,k--UNSET))
	 `(org-habit-ready-face (,k--UNSET))
	 `(org-habit-alert-face (,k--UNSET))
	 `(org-habit-clear-face (,k--UNSET))
	 `(org-habit-overdue-face (,k--UNSET))
	 `(org-habit-clear-future-face (,k--UNSET))
	 `(org-habit-ready-future-face (,k--UNSET))
	 `(org-habit-alert-future-face (,k--UNSET))
	 `(org-habit-overdue-future-face (,k--UNSET))

	 ;;; C
	  
	 ;;; C++
	 
	 )))


;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

  (provide-theme 'kolors)

  ;; Local Variables:
  ;; no-byte-compile: t
  ;; End:

;;; kolor-theme.el ends here
