; Kermit mode

(autoload 'awk-mode "cc-mode" nil t) ; Must load new Awk mode!

(define-derived-mode kermit-mode
  awk-mode "Kermit"
  "Major Mode for Kermit Scripts"
  (auto-fill-mode 1)
  (setq fill-column 78)
  (setq indent-tabs-mode nil)
  (setq brace-else-brace 1)
  (setq comment-multi-line nil)
  (setq comment-column 40)
  (setq comment-start "\# ")
  (setq comment-end ""))

(setq auto-mode-alist (append '(("\\.ksc" . kermit-mode))))
