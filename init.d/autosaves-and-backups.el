;;; package --- Summary:

;;; Commentary:

;;; Code:

(eval-after-load 'git-timemachine
  '(progn (super-save-mode +1)))


;; Interval and timeout
(setq auto-save-interval 5
      auto-save-timeout 5)


;; Create a backup files
(setq backup-by-copying t
      kept-new-versions 6
      kept-old-versions 2
      delete-old-versions t
      version-control t)


;; Save all tempfiles in $TMPDIR/emacs$UID/
(defconst emacs-tmp-dir "~/.emacs.d/local/tmp/")
(setq backup-directory-alist
      `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
      `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix
      emacs-tmp-dir)


;; Delete files not accessed in a week
(message "Deleting old backup files...")
(let ((week (* 60 60 24 7))
      (current (float-time (current-time))))
  (dolist (file (directory-files temporary-file-directory t))
    (when (and (backup-file-name-p file)
               (> (- current (float-time (fifth (file-attributes file))))
                  week))
      (message "%s" file)
      (delete-file file))))


;; Restore cursor position when reopening files
(require 'saveplace)
(setq save-place-file "~/.emacs.d/local/saveplace")
(setq-default save-place t)


;; Save on focus out
;; (add-hook
;;   'focus-out-hook
;;   (lambda ()
;;     (interactive)
;;     (save-some-buffers t)))


;; Save on interval
;; (add-hook
;;   'auto-save-hook
;;   (lambda ()
;;     (interactive)
;;     (save-some-buffers t)))

;; Auto-save
(defun save-all-advice (orig-fun &rest args)
  (interactive)
  (save-some-buffers t)
  (apply orig-fun args))

(advice-add 'evil-window-next :before #'super-save-command-advice)
(advice-add 'other-window :before #'super-save-command-advice)
(advice-add 'helm-mini :around #'save-all-advice)
(advice-add 'helm-M-x :around #'save-all-advice)
(advice-add 'helm-projectile :around #'save-all-advice)

;;; autosaves-and-backups.el ends here

