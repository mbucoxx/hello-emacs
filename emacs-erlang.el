;;; emacs-erlang.el
;;
;; Description: Customize options for erlang
;;


;; Setup erlang path
(setq load-path (cons  "C:/Program Files/erl5.9.1/lib/tools-2.6.7/emacs"
      load-path))
      (setq erlang-root-dir "C:/Program Files/erl5.9.1")
      (setq exec-path (cons "C:/Program Files/erl5.9.1/bin" exec-path))
(require 'erlang-start)


(setq erlang-electric-commands
      ; Insert a comma character and possibly a new indented line. 
      '(erlang-electric-comma
      ; Insert a semicolon character and possibly a prototype for the next line.
        erlang-electric-semicolon
      ; Insert a '>'-sign and possible a new indented line.
        erlang-electric-gt
        ))


;; -------------------------------------------------------------------
;;                      Erlang KEY BINDINGS
;; -------------------------------------------------------------------
(add-hook 'erlang-mode-hook
          '(lambda ()
             (define-key erlang-mode-map (kbd "C-.")
               'erl-find-source-under-point)
             ))
(add-hook 'erlang-mode-hook
          '(lambda ()
             (define-key erlang-mode-map (kbd "C-,") 'erl-find-source-unwind)
             ))

;; -------------------------------------------------------------------
;;; emacs-erlang.el ends here
