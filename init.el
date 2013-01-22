;; Emacs startup file.

(add-hook 'after-init-hook
		  '(lambda () (setq debug-on-error t)))


;; define dotfiles-dir where all the files live.
(setq dotfiles-dir (file-name-directory
			(or load-file-name (buffer-file-name))))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")


;; Load up Org Mode and Babel
(require 'org-install)
(require 'ob-tangle)

;; load up the main file
(org-babel-load-file (expand-file-name "emax.org" dotfiles-dir))

(defun etex ()
  "LaTex/AucTex Configuration."
  (interactive)
  (org-babel-load-file (expand-file-name "etex.org" dotfiles-dir))
)

(defun ecb ()
  "IDE Configuration."
  (interactive)
  (org-babel-load-file (expand-file-name "ecb.org" dotfiles-dir))
)

(defun eide ()
  "IDE Configuration."
  (interactive)
  (org-babel-load-file (expand-file-name "eide.org" dotfiles-dir))
)

(defun ewl ()
  "Wanderlust Configuration."
  (interactive)
  (org-babel-load-file (expand-file-name "wl.org" dotfiles-dir))
  (wl)
)

(defun ecal ()
  "Google Calender."
  (interactive)
  (org-babel-load-file (expand-file-name "ecal.org" dotfiles-dir))
  (ecal-open-calendar)
)

;; By setting the custom-file variable, you can keep those automated
;; customizations in a separate file. Put this in your Emacs init:

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)
