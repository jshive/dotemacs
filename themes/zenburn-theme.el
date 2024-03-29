;;; zenburn-theme.el --- A low contrast color theme for Emacs.

;; Copyright (C) 2011 Bozhidar Batsov

;; Author: Bozhidar Batsov <bozhidar.batsov@gmail.com>
;; URL: http://github.com/bbatsov/zenburn-emacs
;; Version: 1.5

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
;;
;; A port of the popular Vim theme Zenburn for Emacs 24, built on top of
;; the new built-in theme support in Emacs 24. There exists one other version of the
;; theme by Daniel Brockman. My version was originally based on it,
;; but it was in such a disarray, that I decided to rewrite it from
;; scratch in a more maintainable manner (hopefully).
;;
;;; Installation:
;;
;;   Drop the theme in a folder that is on `custom-theme-load-path'
;; and enjoy!
;;
;; Don't forget that the theme requires Emacs 24.
;;
;;; Bugs
;;
;; None that I'm aware of.
;;
;;; Credits
;;
;; Jani Nurminen created the original theme for vim on such this port
;; is based.
;;
;;; Code
(deftheme zenburn "The Zenburn color theme")

(let ((class '((class color) (min-colors 89)))
       ;; Zenburn palette
       ;; colors with +x are lighter, colors with -x are darker
       (zenburn-fg "#dcdccc")
       (zenburn-fg-1 "#656555")
       (zenburn-bg-1 "#2b2b2b")
       (zenburn-bg-05 "#383838")
       (zenburn-bg "#3f3f3f")
       (zenburn-bg+1 "#4f4f4f")
       (zenburn-bg+2 "#5f5f5f")
       (zenburn-bg+3 "#6f6f6f")
       (zenburn-red+1 "#dca3a3")
       (zenburn-red "#cc9393")
       (zenburn-red-1 "#bc8383")
       (zenburn-red-2 "#ac7373")
       (zenburn-red-3 "#9c6363")
       (zenburn-red-4 "#8c5353")
       (zenburn-orange "#dfaf8f")
       (zenburn-yellow "#f0dfaf")
       (zenburn-yellow-1 "#e0cf9f")
       (zenburn-yellow-2 "#d0bf8f")
       (zenburn-green-1 "#5f7f5f")
       (zenburn-green "#7f9f7f")
       (zenburn-green+1 "#8fb28f")
       (zenburn-green+2 "#9fc59f")
       (zenburn-green+3 "#afd8af")
       (zenburn-green+4 "#bfebbf")
       (zenburn-cyan "#93e0e3")
       (zenburn-blue+1 "#94bff3")
       (zenburn-blue "#8cd0d3")
       (zenburn-blue-1 "#7cb8bb")
       (zenburn-blue-2 "#6ca0a3")
       (zenburn-blue-3 "#5c888b")
       (zenburn-blue-4 "#4c7073")
       (zenburn-blue-5 "#366060")
       (zenburn-magenta "#dc8cc3"))
  (custom-theme-set-faces
    'zenburn
    '(button ((t (:underline t))))
    `(link ((,class (:foreground ,zenburn-yellow :underline t :weight bold))))
    `(link-visited ((,class (:foreground ,zenburn-yellow-2 :underline t :weight normal))))

   ;;; basic coloring
    `(default ((,class (:foreground ,zenburn-fg :background ,zenburn-bg))))
    `(cursor ((,class (:foreground ,zenburn-fg))))
    `(escape-glyph-face ((,class (:foreground ,zenburn-red))))
    `(fringe ((,class (:foreground ,zenburn-fg :background ,zenburn-bg+1))))
    `(header-line ((,class (:foreground ,zenburn-yellow
                             :background ,zenburn-bg-1
                             :box (:line-width -1 :style released-button)))))
    `(highlight ((,class (:background ,zenburn-bg-05))))

   ;;; compilation
    `(compilation-column-face ((,class (:foreground ,zenburn-yellow))))
    `(compilation-enter-directory-face ((,class (:foreground ,zenburn-green))))
    `(compilation-error-face ((,class (:foreground ,zenburn-red-1 :weight bold :underline t))))
    `(compilation-face ((,class (:foreground ,zenburn-fg))))
    `(compilation-info-face ((,class (:foreground ,zenburn-blue))))
    `(compilation-info ((,class (:foreground ,zenburn-green+4 :underline t))))
    `(compilation-leave-directory-face ((,class (:foreground ,zenburn-green))))
    `(compilation-line-face ((,class (:foreground ,zenburn-yellow))))
    `(compilation-line-number ((,class (:foreground ,zenburn-yellow))))
    `(compilation-message-face ((,class (:foreground ,zenburn-blue))))
    `(compilation-warning-face ((,class (:foreground ,zenburn-yellow-1 :weight bold :underline t))))

   ;;; grep
    `(grep-context-face ((,class (:foreground ,zenburn-fg))))
    `(grep-error-face ((,class (:foreground ,zenburn-red-1 :weight bold :underline t))))
    `(grep-hit-face ((,class (:foreground ,zenburn-blue))))
    `(grep-match-face ((,class (:foreground ,zenburn-orange :weight bold))))
    `(match ((,class (:background ,zenburn-bg-1 :foreground ,zenburn-orange :weight bold))))

    ;; faces used by isearch
    `(isearch ((,class (:foreground ,zenburn-yellow :background ,zenburn-bg-1))))
    `(isearch-fail ((,class (:foreground ,zenburn-fg :background ,zenburn-red-4))))
    `(lazy-highlight ((,class (:foreground ,zenburn-yellow :background ,zenburn-bg+2))))

    `(menu ((,class (:foreground ,zenburn-fg :background ,zenburn-bg))))
    `(minibuffer-prompt ((,class (:foreground ,zenburn-yellow))))
    `(mode-line
       ((,class (:foreground ,zenburn-green+1
                  :background ,zenburn-bg-1
                  :box nil))))
    `(mode-line-buffer-id ((,class (:foreground ,zenburn-yellow :weight bold :box nil))))
    `(mode-line-inactive
       ((,class (:foreground ,zenburn-green-1
                  :background ,zenburn-bg-05
                  :box nil))))
    `(mode-line-emphasis ((,class (:box nil))))
    `(region ((,class (:background ,zenburn-bg-1))))
    `(secondary-selection ((,class (:background ,zenburn-bg+2))))
    `(trailing-whitespace ((,class (:background ,zenburn-red))))
    `(vertical-border ((,class (:foreground ,zenburn-fg))))

   ;;; font lock
    `(font-lock-builtin-face ((,class (:foreground ,zenburn-blue))))
    `(font-lock-comment-face ((,class (:foreground ,zenburn-green))))
    `(font-lock-comment-delimiter-face ((,class (:foreground ,zenburn-green))))
    `(font-lock-constant-face ((,class (:foreground ,zenburn-green+4))))
    `(font-lock-doc-face ((,class (:foreground ,zenburn-green+1))))
    `(font-lock-doc-string-face ((,class (:foreground ,zenburn-blue+1))))
    `(font-lock-function-name-face ((,class (:foreground ,zenburn-blue))))
    `(font-lock-keyword-face ((,class (:foreground ,zenburn-yellow :weight bold))))
    `(font-lock-negation-char-face ((,class (:foreground ,zenburn-fg))))
    `(font-lock-preprocessor-face ((,class (:foreground ,zenburn-blue))))
    `(font-lock-string-face ((,class (:foreground ,zenburn-red))))
    `(font-lock-type-face ((,class (:foreground ,zenburn-blue))))
    `(font-lock-variable-name-face ((,class (:foreground ,zenburn-orange))))
    `(font-lock-warning-face ((,class (:foreground ,zenburn-yellow-1 :weight bold :underline t))))

    `(c-annotation-face ((,class (:inherit font-lock-constant-face))))

   ;;; external

    ;; full-ack
    `(ack-separator ((,class (:foreground ,zenburn-fg))))
    `(ack-file ((,class (:foreground ,zenburn-blue))))
    `(ack-line ((,class (:foreground ,zenburn-yellow))))
    `(ack-match ((,class (:foreground ,zenburn-orange :background ,zenburn-bg-1 :weigth bold))))

    ;; auctex
    `(font-latex-bold ((,class (:inherit bold))))
    `(font-latex-warning ((,class (:inherit font-lock-warning))))
    `(font-latex-sedate ((,class (:foreground ,zenburn-yellow :weight bold ))))
    `(font-latex-title-4 ((,class (:inherit variable-pitch :weight bold))))

    ;; auto-complete
    `(ac-candidate-face ((,class (:background ,zenburn-bg+3 :foreground "black"))))
    `(ac-selection-face ((,class (:background ,zenburn-blue-4 :foreground ,zenburn-fg))))
    `(popup-tip-face ((,class (:background ,zenburn-yellow-2 :foreground "black"))))
    `(popup-scroll-bar-foreground-face ((,class (:background ,zenburn-blue-5))))
    `(popup-scroll-bar-background-face ((,class (:background ,zenburn-bg-1))))
    `(popup-isearch-match ((,class (:background ,zenburn-bg :foreground ,zenburn-fg))))

    ;; diff
    `(diff-added ((,class (:foreground ,zenburn-green+4))))
    `(diff-changed ((,class (:foreground ,zenburn-yellow))))
    `(diff-removed ((,class (:foreground ,zenburn-red))))
    `(diff-header ((,class (:background ,zenburn-bg+1))))
    `(diff-file-header
       ((,class (:background ,zenburn-bg+2 :foreground ,zenburn-fg :bold t))))

    ;; ert
    `(ert-test-result-expected ((,class (:foreground ,zenburn-green+4 :background ,zenburn-bg))))
    `(ert-test-result-unexpected ((,class (:foreground ,zenburn-red :background ,zenburn-bg))))

    ;; eshell
    `(eshell-prompt ((,class (:foreground ,zenburn-yellow :weight bold))))
    `(eshell-ls-archive ((,class (:foreground ,zenburn-red-1 :weight bold))))
    `(eshell-ls-backup ((,class (:inherit font-lock-comment))))
    `(eshell-ls-clutter ((,class (:inherit font-lock-comment))))
    `(eshell-ls-directory ((,class (:foreground ,zenburn-blue+1 :weight bold))))
    `(eshell-ls-executable ((,class (:foreground ,zenburn-red+1 :weight bold))))
    `(eshell-ls-unreadable ((,class (:foreground ,zenburn-fg))))
    `(eshell-ls-missing ((,class (:inherit font-lock-warning))))
    `(eshell-ls-product ((,class (:inherit font-lock-doc))))
    `(eshell-ls-special ((,class (:foreground ,zenburn-yellow :weight bold))))
    `(eshell-ls-symlink ((,class (:foreground ,zenburn-cyan :weight bold))))

    ;; flymake
    `(flymake-errline ((,class (:foreground ,zenburn-red-1 :weight bold :underline t))))
    `(flymake-warnline ((,class (:foreground ,zenburn-yellow-1 :weight bold :underline t))))

    ;; flyspell
    `(flyspell-duplicate ((,class (:foreground ,zenburn-yellow-1 :weight bold :underline t))))
    `(flyspell-incorrect ((,class (:foreground ,zenburn-red-1 :weight bold :underline t))))

    ;; erc
    `(erc-action-face ((,class (:inherit erc-default-face))))
    `(erc-bold-face ((,class (:weight bold))))
    `(erc-current-nick-face ((,class (:foreground ,zenburn-blue :weight bold))))
    `(erc-dangerous-host-face ((,class (:inherit font-lock-warning))))
    `(erc-default-face ((,class (:foreground ,zenburn-fg))))
    `(erc-direct-msg-face ((,class (:inherit erc-default))))
    `(erc-error-face ((,class (:inherit font-lock-warning))))
    `(erc-fool-face ((,class (:inherit erc-default))))
    `(erc-highlight-face ((,class (:inherit hover-highlight))))
    `(erc-input-face ((,class (:foreground ,zenburn-yellow))))
    `(erc-keyword-face ((,class (:foreground ,zenburn-blue :weight bold))))
    `(erc-nick-default-face ((,class (:foreground ,zenburn-yellow :weight bold))))
    `(erc-my-nick-face ((,class (:foreground ,zenburn-red :weigth bold))))
    `(erc-nick-msg-face ((,class (:inherit erc-default))))
    `(erc-notice-face ((,class (:foreground ,zenburn-green))))
    `(erc-pal-face ((,class (:foreground ,zenburn-orange :weight bold))))
    `(erc-prompt-face ((,class (:foreground ,zenburn-orange :background ,zenburn-bg :weight bold))))
    `(erc-timestamp-face ((,class (:foreground ,zenburn-green+1))))
    `(erc-underline-face ((t (:underline t))))

    ;; gnus
    `(gnus-group-mail-1 ((,class (:bold t :inherit gnus-group-mail-1-empty))))
    `(gnus-group-mail-1-empty ((,class (:inherit gnus-group-news-1-empty))))
    `(gnus-group-mail-2 ((,class (:bold t :inherit gnus-group-mail-2-empty))))
    `(gnus-group-mail-2-empty ((,class (:inherit gnus-group-news-2-empty))))
    `(gnus-group-mail-3 ((,class (:bold t :inherit gnus-group-mail-3-empty))))
    `(gnus-group-mail-3-empty ((,class (:inherit gnus-group-news-3-empty))))
    `(gnus-group-mail-4 ((,class (:bold t :inherit gnus-group-mail-4-empty))))
    `(gnus-group-mail-4-empty ((,class (:inherit gnus-group-news-4-empty))))
    `(gnus-group-mail-5 ((,class (:bold t :inherit gnus-group-mail-5-empty))))
    `(gnus-group-mail-5-empty ((,class (:inherit gnus-group-news-5-empty))))
    `(gnus-group-mail-6 ((,class (:bold t :inherit gnus-group-mail-6-empty))))
    `(gnus-group-mail-6-empty ((,class (:inherit gnus-group-news-6-empty))))
    `(gnus-group-mail-low ((,class (:bold t :inherit gnus-group-mail-low-empty))))
    `(gnus-group-mail-low-empty ((,class (:inherit gnus-group-news-low-empty))))
    `(gnus-group-news-1 ((,class (:bold t :inherit gnus-group-news-1-empty))))
    `(gnus-group-news-2 ((,class (:bold t :inherit gnus-group-news-2-empty))))
    `(gnus-group-news-3 ((,class (:bold t :inherit gnus-group-news-3-empty))))
    `(gnus-group-news-4 ((,class (:bold t :inherit gnus-group-news-4-empty))))
    `(gnus-group-news-5 ((,class (:bold t :inherit gnus-group-news-5-empty))))
    `(gnus-group-news-6 ((,class (:bold t :inherit gnus-group-news-6-empty))))
    `(gnus-group-news-low ((,class (:bold t :inherit gnus-group-news-low-empty))))
    `(gnus-header-content ((,class (:inherit message-header-other))))
    `(gnus-header-from ((,class (:inherit message-header-from))))
    `(gnus-header-name ((,class (:inherit message-header-name))))
    `(gnus-header-newsgroups ((,class (:inherit message-header-other))))
    `(gnus-header-subject ((,class (:inherit message-header-subject))))
    `(gnus-summary-cancelled ((,class (:foreground ,zenburn-orange))))
    `(gnus-summary-high-ancient ((,class (:foreground ,zenburn-blue))))
    `(gnus-summary-high-read ((,class (:foreground ,zenburn-green :weight bold))))
    `(gnus-summary-high-ticked ((,class (:foreground ,zenburn-orange :weight bold))))
    `(gnus-summary-high-unread ((,class (:foreground ,zenburn-fg :weight bold))))
    `(gnus-summary-low-ancient ((,class (:foreground ,zenburn-blue))))
    `(gnus-summary-low-read ((t (:foreground ,zenburn-green))))
    `(gnus-summary-low-ticked ((,class (:foreground ,zenburn-orange :weight bold))))
    `(gnus-summary-low-unread ((,class (:foreground ,zenburn-fg))))
    `(gnus-summary-normal-ancient ((,class (:foreground ,zenburn-blue))))
    `(gnus-summary-normal-read ((,class (:foreground ,zenburn-green))))
    `(gnus-summary-normal-ticked ((,class (:foreground ,zenburn-orange :weight bold))))
    `(gnus-summary-normal-unread ((,class (:foreground ,zenburn-fg))))
    `(gnus-summary-selected ((,class (:foreground ,zenburn-yellow :weight bold))))
    `(gnus-cite-1 ((,class (:foreground ,zenburn-blue))))
    `(gnus-cite-10 ((,class (:foreground ,zenburn-yellow-1))))
    `(gnus-cite-11 ((,class (:foreground ,zenburn-yellow))))
    `(gnus-cite-2 ((,class (:foreground ,zenburn-blue-1))))
    `(gnus-cite-3 ((,class (:foreground ,zenburn-blue-2))))
    `(gnus-cite-4 ((,class (:foreground ,zenburn-green+2))))
    `(gnus-cite-5 ((,class (:foreground ,zenburn-green+1))))
    `(gnus-cite-6 ((,class (:foreground ,zenburn-green))))
    `(gnus-cite-7 ((,class (:foreground ,zenburn-red))))
    `(gnus-cite-8 ((,class (:foreground ,zenburn-red-1))))
    `(gnus-cite-9 ((,class (:foreground ,zenburn-red-2))))
    `(gnus-group-news-1-empty ((,class (:foreground ,zenburn-yellow))))
    `(gnus-group-news-2-empty ((,class (:foreground ,zenburn-green+3))))
    `(gnus-group-news-3-empty ((,class (:foreground ,zenburn-green+1))))
    `(gnus-group-news-4-empty ((,class (:foreground ,zenburn-blue-2))))
    `(gnus-group-news-5-empty ((,class (:foreground ,zenburn-blue-3))))
    `(gnus-group-news-6-empty ((,class (:foreground ,zenburn-bg+2))))
    `(gnus-group-news-low-empty ((,class (:foreground ,zenburn-bg+2))))
    `(gnus-signature ((,class (:foreground ,zenburn-yellow))))
    `(gnus-x ((,class (:background ,zenburn-fg :foreground ,zenburn-bg))))

    ;; helm
    `(helm-header
       ((,class (:foreground ,zenburn-green
                  :background ,zenburn-bg
                  :underline nil
                  :box nil))))
    `(helm-source-header
       ((,class (:foreground ,zenburn-yellow
                  :background ,zenburn-bg-1
                  :weight bold
                  :box (:line-width -1 :style released-button)))))
    `(helm-selection ((,class (:background ,zenburn-bg-1))))
    `(helm-selection-line ((,class (:background ,zenburn-bg-1))))
    `(helm-visible-mark ((,class (:foreground ,zenburn-bg :background ,zenburn-yellow-2))))
    `(helm-candidate-number ((,class (:foreground ,zenburn-green+4 :background ,zenburn-bg-1))))

    ;; hl-line-mode
    `(hl-line-face ((,class (:background ,zenburn-bg-1))))

    ;; ido-mode
    `(ido-first-match ((,class (:foreground ,zenburn-yellow :weight bold))))
    `(ido-only-match ((,class (:foreground ,zenburn-orange :weight bold))))
    `(ido-subdir ((,class (:foreground ,zenburn-yellow))))

    ;; js2-mode
    `(js2-warning-face ((,class (:underline ,zenburn-orange))))
    `(js2-error-face ((,class (:foreground ,zenburn-red :weight bold))))
    `(js2-jsdoc-tag-face ((,class (:foreground ,zenburn-green-1))))
    `(js2-jsdoc-type-face ((,class (:foreground ,zenburn-green+2))))
    `(js2-jsdoc-value-face ((,class (:foreground ,zenburn-green+3))))
    `(js2-function-param-face ((,class (:foreground, zenburn-green+3))))
    `(js2-external-variable-face ((,class (:foreground ,zenburn-orange))))

    ;; jabber-mode
    `(jabber-roster-user-away ((,class (:foreground ,zenburn-green+2))))
    `(jabber-roster-user-online ((,class (:foreground ,zenburn-blue-1))))
    `(jabber-roster-user-dnd ((,class (:foreground ,zenburn-red+1))))
    `(jabber-rare-time-face ((,class (:foreground ,zenburn-green+1))))
    `(jabber-chat-prompt-local ((,class (:foreground ,zenburn-blue-1))))
    `(jabber-chat-prompt-foreign ((,class (:foreground ,zenburn-red+1))))
    `(jabber-activity-face((,class (:foreground ,zenburn-red+1))))
    `(jabber-activity-personal-face ((,class (:foreground ,zenburn-blue+1))))
    `(jabber-title-small ((,class (:height 1.1 :weight bold))))
    `(jabber-title-medium ((,class (:height 1.2 :weight bold))))
    `(jabber-title-large ((,class (:height 1.3 :weight bold))))

    ;; linum-mode
    `(linum ((,class (:foreground ,zenburn-green+2 :background ,zenburn-bg))))

    ;; magit
    `(magit-section-title ((,class (:foreground ,zenburn-yellow :weight bold))))
    `(magit-branch ((,class (:foreground ,zenburn-orange :weight bold))))

    ;; message-mode
    `(message-cited-text ((,class (:inherit font-lock-comment))))
    `(message-header-name ((,class (:foreground ,zenburn-green+1))))
    `(message-header-other ((,class (:foreground ,zenburn-green))))
    `(message-header-to ((,class (:foreground ,zenburn-yellow :weight bold))))
    `(message-header-from ((,class (:foreground ,zenburn-yellow :weight bold))))
    `(message-header-cc ((,class (:foreground ,zenburn-yellow :weight bold))))
    `(message-header-newsgroups ((,class (:foreground ,zenburn-yellow :weight bold))))
    `(message-header-subject ((,class (:foreground ,zenburn-orange :weight bold))))
    `(message-header-xheader ((,class (:foreground ,zenburn-green))))
    `(message-mml ((,class (:foreground ,zenburn-yellow :weight bold))))
    `(message-separator ((,class (:inherit font-lock-comment))))

    ;; mew
    `(mew-face-header-subject ((,class (:foreground ,zenburn-orange))))
    `(mew-face-header-from ((,class (:foreground ,zenburn-yellow))))
    `(mew-face-header-date ((,class (:foreground ,zenburn-green))))
    `(mew-face-header-to ((,class (:foreground ,zenburn-red))))
    `(mew-face-header-key ((,class (:foreground ,zenburn-green))))
    `(mew-face-header-private ((,class (:foreground ,zenburn-green))))
    `(mew-face-header-important ((,class (:foreground ,zenburn-blue))))
    `(mew-face-header-marginal ((,class (:foreground ,zenburn-fg :weight bold))))
    `(mew-face-header-warning ((,class (:foreground ,zenburn-red))))
    `(mew-face-header-xmew ((,class (:foreground ,zenburn-green))))
    `(mew-face-header-xmew-bad ((,class (:foreground ,zenburn-red))))
    `(mew-face-body-url ((,class (:foreground ,zenburn-orange))))
    `(mew-face-body-comment ((,class (:foreground ,zenburn-fg :slant italic))))
    `(mew-face-body-cite1 ((,class (:foreground ,zenburn-green))))
    `(mew-face-body-cite2 ((,class (:foreground ,zenburn-blue))))
    `(mew-face-body-cite3 ((,class (:foreground ,zenburn-orange))))
    `(mew-face-body-cite4 ((,class (:foreground ,zenburn-yellow))))
    `(mew-face-body-cite5 ((,class (:foreground ,zenburn-red))))
    `(mew-face-mark-review ((,class (:foreground ,zenburn-blue))))
    `(mew-face-mark-escape ((,class (:foreground ,zenburn-green))))
    `(mew-face-mark-delete ((,class (:foreground ,zenburn-red))))
    `(mew-face-mark-unlink ((,class (:foreground ,zenburn-yellow))))
    `(mew-face-mark-refile ((,class (:foreground ,zenburn-green))))
    `(mew-face-mark-unread ((,class (:foreground ,zenburn-red-2))))
    `(mew-face-eof-message ((,class (:foreground ,zenburn-green))))
    `(mew-face-eof-part ((,class (:foreground ,zenburn-yellow))))

    ;; mic-paren
    `(paren-face-match ((,class (:foreground ,zenburn-cyan :background ,zenburn-bg :weight bold))))
    `(paren-face-mismatch ((,class (:foreground ,zenburn-bg :background ,zenburn-magenta :weight bold))))
    `(paren-face-no-match ((,class (:foreground ,zenburn-bg :background ,zenburn-red :weight bold))))

    ;; nav
    `(nav-face-heading ((,class (:foreground ,zenburn-yellow))))
    `(nav-face-button-num ((,class (:foreground ,zenburn-cyan))))
    `(nav-face-dir ((,class (:foreground ,zenburn-green))))
    `(nav-face-hdir ((,class (:foreground ,zenburn-red))))
    `(nav-face-file ((,class (:foreground ,zenburn-fg))))
    `(nav-face-hfile ((,class (:foreground ,zenburn-red-4))))

    ;; org-mode
    `(org-agenda-date-today
       ((,class (:foreground "white" :slant italic :weight bold))) t)
    `(org-agenda-structure
       ((,class (:inherit font-lock-comment-face))))
    `(org-archived ((,class (:foreground ,zenburn-fg :weight bold))))
    `(org-checkbox ((,class (:background ,zenburn-bg+2 :foreground "white"
                              :box (:line-width 1 :style released-button)))))
    `(org-date ((,class (:foreground ,zenburn-blue :underline t))))
    `(org-deadline-announce ((,class (:foreground ,zenburn-red-1))))
    `(org-done ((,class (:bold t :weight bold :foreground ,zenburn-green+3))))
    `(org-formula ((,class (:foreground ,zenburn-yellow-2))))
    `(org-headline-done ((,class (:foreground ,zenburn-green+3))))
    `(org-hide ((,class (:foreground ,zenburn-bg-1))))
    `(org-level-1 ((,class (:foreground ,zenburn-orange))))
    `(org-level-2 ((,class (:foreground ,zenburn-green+1))))
    `(org-level-3 ((,class (:foreground ,zenburn-blue-1))))
    `(org-level-4 ((,class (:foreground ,zenburn-yellow-2))))
    `(org-level-5 ((,class (:foreground ,zenburn-cyan))))
    `(org-level-6 ((,class (:foreground ,zenburn-green-1))))
    `(org-level-7 ((,class (:foreground ,zenburn-red-4))))
    `(org-level-8 ((,class (:foreground ,zenburn-blue-4))))
    `(org-link ((,class (:foreground ,zenburn-yellow-2 :underline t))))
    `(org-scheduled ((,class (:foreground ,zenburn-green+4))))
    `(org-scheduled-previously ((,class (:foreground ,zenburn-red-4))))
    `(org-scheduled-today ((,class (:foreground ,zenburn-blue+1))))
    `(org-special-keyword ((,class (:foreground ,zenburn-yellow-1))))
    `(org-table ((,class (:foreground ,zenburn-green+2))))
    `(org-tag ((,class (:bold t :weight bold))))
    `(org-time-grid ((,class (:foreground ,zenburn-orange))))
    `(org-todo ((,class (:bold t :foreground ,zenburn-red :weight bold))))
    `(org-upcoming-deadline ((,class (:inherit font-lock-keyword-face))))
    `(org-warning ((,class (:bold t :foreground ,zenburn-red :weight bold))))

    ;; outline
    `(outline-8 ((,class (:inherit default))))
    `(outline-7 ((,class (:inherit outline-8 :height 1.0))))
    `(outline-6 ((,class (:inherit outline-7 :height 1.0))))
    `(outline-5 ((,class (:inherit outline-6 :height 1.0))))
    `(outline-4 ((,class (:inherit outline-5 :height 1.0))))
    `(outline-3 ((,class (:inherit outline-4 :height 1.0))))
    `(outline-2 ((,class (:inherit outline-3 :height 1.0))))
    `(outline-1 ((,class (:inherit outline-2 :height 1.0))))

    ;; rainbow-delimiters
    `(rainbow-delimiters-depth-1-face ((,class (:foreground ,zenburn-cyan))))
    `(rainbow-delimiters-depth-2-face ((,class (:foreground ,zenburn-yellow))))
    `(rainbow-delimiters-depth-3-face ((,class (:foreground ,zenburn-blue+1))))
    `(rainbow-delimiters-depth-4-face ((,class (:foreground ,zenburn-red+1))))
    `(rainbow-delimiters-depth-5-face ((,class (:foreground ,zenburn-orange))))
    `(rainbow-delimiters-depth-6-face ((,class (:foreground ,zenburn-blue-1))))
    `(rainbow-delimiters-depth-7-face ((,class (:foreground ,zenburn-green+4))))
    `(rainbow-delimiters-depth-8-face ((,class (:foreground ,zenburn-red-3))))
    `(rainbow-delimiters-depth-9-face ((,class (:foreground ,zenburn-yellow-2))))
    `(rainbow-delimiters-depth-10-face ((,class (:foreground ,zenburn-green+2))))
    `(rainbow-delimiters-depth-11-face ((,class (:foreground ,zenburn-blue+1))))
    `(rainbow-delimiters-depth-12-face ((,class (:foreground ,zenburn-red-4))))

    ;; rpm-mode
    `(rpm-spec-dir-face ((,class (:foreground ,zenburn-green))))
    `(rpm-spec-doc-face ((,class (:foreground ,zenburn-green))))
    `(rpm-spec-ghost-face ((,class (:foreground ,zenburn-red))))
    `(rpm-spec-macro-face ((,class (:foreground ,zenburn-yellow))))
    `(rpm-spec-obsolete-tag-face ((,class (:foreground ,zenburn-red))))
    `(rpm-spec-package-face ((,class (:foreground ,zenburn-red))))
    `(rpm-spec-section-face ((,class (:foreground ,zenburn-yellow))))
    `(rpm-spec-tag-face ((,class (:foreground ,zenburn-blue))))
    `(rpm-spec-var-face ((,class (:foreground ,zenburn-red))))

    ;; rst-mode
    `(rst-level-1-face ((,class (:foreground ,zenburn-orange))))
    `(rst-level-2-face ((,class (:foreground ,zenburn-green+1))))
    `(rst-level-3-face ((,class (:foreground ,zenburn-blue-1))))
    `(rst-level-4-face ((,class (:foreground ,zenburn-yellow-2))))
    `(rst-level-5-face ((,class (:foreground ,zenburn-cyan))))
    `(rst-level-6-face ((,class (:foreground ,zenburn-green-1))))

    ;; show-paren
    `(show-paren-mismatch ((,class (:foreground ,zenburn-red-3 :background ,zenburn-bg :weight bold))))
    `(show-paren-match ((,class (:foreground ,zenburn-blue-1 :background ,zenburn-bg :weight bold))))

    ;; SLIME
    `(slime-repl-inputed-output-face ((,class (:foreground ,zenburn-red))))

    ;; whitespace-mode
    `(whitespace-space ((,class (:background ,zenburn-bg :foreground ,zenburn-bg+1))))
    `(whitespace-hspace ((,class (:background ,zenburn-bg :foreground ,zenburn-bg+1))))
    `(whitespace-tab ((,class (:background ,zenburn-bg :foreground ,zenburn-red))))
    `(whitespace-newline ((,class (:foreground ,zenburn-bg+1))))
    `(whitespace-trailing ((,class (:foreground ,zenburn-red :background ,zenburn-bg))))
    `(whitespace-line ((,class (:background ,zenburn-bg-05 :foreground ,zenburn-magenta))))
    `(whitespace-space-before-tab ((,class (:background ,zenburn-orange :foreground ,zenburn-orange))))
    `(whitespace-indentation ((,class (:background ,zenburn-yellow :foreground ,zenburn-red))))
    `(whitespace-empty ((,class (:background ,zenburn-yellow :foreground ,zenburn-red))))
    `(whitespace-space-after-tab ((,class (:background ,zenburn-yellow :foreground ,zenburn-red))))

    ;; wanderlust
    `(wl-highlight-folder-few-face ((,class (:foreground ,zenburn-red-2))))
    `(wl-highlight-folder-many-face ((,class (:foreground ,zenburn-red-1))))
    `(wl-highlight-folder-path-face ((,class (:foreground ,zenburn-orange))))
    `(wl-highlight-folder-unread-face ((,class (:foreground ,zenburn-blue))))
    `(wl-highlight-folder-zero-face ((,class (:foreground ,zenburn-fg))))
    `(wl-highlight-folder-unknown-face ((,class (:foreground ,zenburn-blue))))
    `(wl-highlight-message-citation-header ((,class (:foreground ,zenburn-red-1))))
    `(wl-highlight-message-cited-text-1 ((,class (:foreground ,zenburn-red))))
    `(wl-highlight-message-cited-text-2 ((,class (:foreground ,zenburn-green+2))))
    `(wl-highlight-message-cited-text-3 ((,class (:foreground ,zenburn-blue))))
    `(wl-highlight-message-cited-text-4 ((,class (:foreground ,zenburn-blue+1))))
    `(wl-highlight-message-header-contents-face ((,class (:foreground ,zenburn-green))))
    `(wl-highlight-message-headers-face ((,class (:foreground ,zenburn-red+1))))
    `(wl-highlight-message-important-header-contents ((,class (:foreground ,zenburn-green+2))))
    `(wl-highlight-message-header-contents ((,class (:foreground ,zenburn-green+1))))
    `(wl-highlight-message-important-header-contents2 ((,class (:foreground ,zenburn-green+2))))
    `(wl-highlight-message-signature ((,class (:foreground ,zenburn-green))))
    `(wl-highlight-message-unimportant-header-contents ((,class (:foreground ,zenburn-fg))))
    `(wl-highlight-summary-answered-face ((,class (:foreground ,zenburn-blue))))
    `(wl-highlight-summary-disposed-face ((,class (:foreground ,zenburn-fg
                                                    :slant italic))))
    `(wl-highlight-summary-new-face ((,class (:foreground ,zenburn-blue))))
    `(wl-highlight-summary-normal-face ((,class (:foreground ,zenburn-fg))))
    `(wl-highlight-summary-thread-top-face ((,class (:foreground ,zenburn-yellow))))
    `(wl-highlight-thread-indent-face ((,class (:foreground ,zenburn-magenta))))
    `(wl-highlight-summary-refiled-face ((,class (:foreground ,zenburn-fg))))
    `(wl-highlight-summary-displaying-face ((,class (:underline t :weight bold))))

    ;; which-func-mode
    `(which-func ((,class (:foreground ,zenburn-green+4))))

    ;; ecb
    `(ecb-default-highlight-face ((,class (:background ,zenburn-bg-1))))
    `(ecb-history-bucket-node-dir-soure-path-face ((,class (:inherit dired-header))))
    `(ecb-method-non-semantic-face ((,class (:inherit font-lock-function-name-face))))
    `(ecb-methods-general-face ((,class (:inherit font-lock-function-name-face))))
    `(ecb-source-read-only-face ((,class (:background ,zenburn-bg-1))))

    ;; hide-ifdef
    `(hide-ifdef-shadow ((,class (:background ,zenburn-bg-1 :foreground ,zenburn-fg :box nil))))
    )

  ;;; custom theme variables
  (custom-theme-set-variables
    'zenburn
    `(ansi-color-names-vector [,zenburn-bg ,zenburn-red ,zenburn-green ,zenburn-yellow
                                ,zenburn-blue ,zenburn-magenta ,zenburn-cyan ,zenburn-fg])

    ;; fill-column-indicator
    `(fci-rule-color ,zenburn-bg-05)))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
    (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'zenburn)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; zenburn-theme.el ends here.
