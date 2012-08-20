;;; init.el
;;
;; Description: initialize file for emacs
;;


(setq load-path (cons "~/.emacs.d" load-path))

(savehist-mode 1)

(put 'narrow-to-region 'disabled nil)

;; -------------------------------------------------------------------
;;                      KEY BINDINGS
;; -------------------------------------------------------------------
(global-set-key "\M-g" 'goto-line)  ; Bind goto-line with Alt+g
(global-set-key "\C-x\ c" 'revert-buffer)
(define-key global-map (kbd "RET") 'newline-and-indent)


;; -------------------------------------------------------------------
;;                      Display
;; -------------------------------------------------------------------
(column-number-mode t) ;; Show column-number in the mode line
(global-linum-mode t) ;; show line number in the left side

;; set frame title to "buffer name" "read/write access" "file name"
(setq frame-title-format "%b %* %f")

;; do not indent with tabs, indent with space
(setq-default indent-tabs-mode nil)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deeper-blue)))
 '(desktop-buffers-not-to-save "Python")
 '(desktop-save-mode t)
 '(ido-mode (quote both) nil (ido))
 '(python-check-command "c:/tools/Python27/Scripts/pychecker.bat --stdlib")
 '(python-python-command "c:/tools/Python27/python.exe"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; -------------------------------------------------------------------
;; Programming Language
;; -------------------------------------------------------------------
(load "emacs-erlang.el")
(load "emacs-python.el")

;; -------------------------------------------------------------------
;;                        Backup policy
;; -------------------------------------------------------------------
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.backup"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

(message "Deleting old backup files...")
(let ((week (* 60 60 24 7))
      (current (float-time (current-time))))
  (dolist (file (directory-files temporary-file-directory t))
    (when (and (backup-file-name-p file)
               (> (- current (float-time (fifth (file-attributes file))))
                  week))
      (message file)
      (delete-file file))))


;; -------------------------------------------------------------------
;;; init.el ends here
