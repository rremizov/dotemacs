;; Leader
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(setq evil-leader/in-all-states 1)


;; Helm
(define-key evil-normal-state-map " " 'helm-mini)
(define-key evil-normal-state-map (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)


;; Projectile
(define-key evil-normal-state-map (kbd "C-p") 'helm-projectile)


;; --- Evil
;; Use ESC to exit emacs mode
(global-set-key [escape] 'evil-exit-emacs-state)

;; Use "jk" to exit insert mode
(define-key evil-insert-state-map "j" #'cofi/maybe-exit)
(evil-define-command cofi/maybe-exit ()
  :repeat change
  (interactive)
  (let ((modified (buffer-modified-p)))
	(insert "j")
	(let ((evt (read-event (format "Insert %c to exit insert state" ?k)
               nil 0.5)))
      (cond
       ((null evt) (message ""))
       ((and (integerp evt) (char-equal evt ?k))
    (delete-char -1)
    (set-buffer-modified-p modified)
    (push 'escape unread-command-events))
       (t (setq unread-command-events (append unread-command-events
                          (list evt))))))))
;; Use M-j and M-k instead of C-d and C-u
(define-key evil-normal-state-map
			(kbd "M-k")
			(lambda () (interactive) (evil-scroll-up nil)))

(define-key evil-normal-state-map
			(kbd "M-j")
			(lambda () (interactive) (evil-scroll-down nil)))

