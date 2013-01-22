(require 'comint)

(defgroup bdi nil
  "BDI2000 QuantumX packages."
  :group 'applications
  :version "24.1"
)

(defun bdi/reset ()
  "Display the module scan. The lisp is displayed in a buffer names `*bdi*.'"
  (interactive)
;;  (comint-send-string (get-buffer-process "*bdi*") "reset\r\n")
  (comint-send-input (get-buffer-process "*bdi*") "reset\r\n" )
)

(defun bdi/connect ()
  "Connect..."
  (interactive)
  (message "Connect .... ")
  (progn
	(delete-other-windows)
	(apply 'make-comint "bdi" "telnet" nil '("bdi2000") )
	(other-window -1)
	)
)


(provide 'bdi)
