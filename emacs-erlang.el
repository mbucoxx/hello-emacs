;;; emacs-erlang.el
;;
;; Description: Customize options for erlang
;;


;; (setq load-path (cons  "/vobs/otp/otp_delivery/suse_x86/lib/tools-0/emacs" load-path))
;; (setq erlang-root-dir "/vobs/otp/otp_delivery/suse_x86")
;; (setq exec-path (cons "/vobs/otp/otp_delivery/suse_x86/bin" exec-path))
;; (require 'erlang-start)

;; (setq erlang-electric-commands
;;   '(erlang-electric-comma
;;     erlang-electric-semicolon
;;     erlang-electric-gt
;;     erlang-electric-newline))           ; auto indent

;; ;; This is needed for Distel setup
;; ;;(let ((distel-dir "/home/elixren/bin/distel/elisp"))
;; ;;  (unless (member distel-dir load-path)
;; ;; Add distel-dir to the end of load-path
;; ;;    (setq load-path (append load-path (list distel-dir)))))

;; (require 'distel)
;; (distel-setup)

(add-hook 'erlang-mode-hook
          '(lambda ()
             (define-key erlang-mode-map (kbd "C-.") 'erl-find-source-under-point)
             ))
(add-hook 'erlang-mode-hook
          '(lambda ()
             (define-key erlang-mode-map (kbd "C-,") 'erl-find-source-unwind)
             ))

;; -------------------------------------------------------------------
;;; emacs-erlang.el ends here
