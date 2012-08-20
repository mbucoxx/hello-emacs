;;; emacs-python.el
;;
;; Description: Customize options for python
;;

;; For security reason, by default, the current directory is removed from the 
;; sys.path of inferior python.
;; Diable it to allow the inferior Python processes to load modules from the
;; current directory.
(setq python-remove-cwd-from-path nil)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; emacs-python.el ends here
