;;; package --- Summary


;;; Commentary:


;;; Code:

;; Leader
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(setq evil-leader/in-all-states 1)


;; Helm
(define-key evil-normal-state-map " " 'helm-mini)
(define-key evil-normal-state-map (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)


;; Projectile
(define-key evil-normal-state-map (kbd "C-p") 'helm-projectile)


;; Use ESC to exit emacs mode
(global-set-key [escape] 'evil-exit-emacs-state)


;; Use "jk" to exit evil insert mode
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


;; Use C-j and C-k instead of C-d and C-u
(define-key evil-normal-state-map
            (kbd "C-k")
            (lambda () (interactive) (evil-scroll-up nil)))

(define-key evil-normal-state-map
            (kbd "C-j")
            (lambda () (interactive) (evil-scroll-down nil)))


;; Switch between windows
(define-key evil-normal-state-map (kbd "C-i") 'evil-window-next)
(define-key evil-normal-state-map (kbd "M-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "M-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "M-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "M-l") 'evil-window-right)


;; Ex
(define-key evil-normal-state-map (kbd ";") 'evil-ex)
(define-key evil-visual-state-map (kbd ";") 'evil-ex)


;; Magit
(evil-leader/set-key (kbd "gs") 'magit-status)


;; Git gutter
(eval-after-load 'git-gutter+
  '(progn
     (evil-leader/set-key (kbd "<") 'git-gutter+-previous-hunk)
     (evil-leader/set-key (kbd ">") 'git-gutter+-next-hunk)
     (evil-leader/set-key (kbd "gc") 'git-gutter+-commit)
     (evil-leader/set-key (kbd "hr") 'git-gutter+-revert-hunks)
     (evil-leader/set-key (kbd "hs") 'git-gutter+-stage-hunks)))


;; Ace
(require 'ace-jump-mode)
(setq ace-jump-word-mode-use-query-char nil)
(define-key evil-normal-state-map (kbd "C-m") 'evil-ace-jump-word-mode)


;; Numbers
(require 'evil-numbers)
(define-key evil-normal-state-map (kbd "C-=") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C--") 'evil-numbers/dec-at-pt)


;; Eyebrowse
(define-key evil-normal-state-map (kbd "gc") 'eyebrowse-close-window-config)
(define-key evil-normal-state-map (kbd "gt") 'eyebrowse-next-window-config)
(define-key evil-normal-state-map (kbd "gT") 'eyebrowse-prev-window-config)


;; Csscomb
(define-key evil-normal-state-map (kbd "<f7>") 'csscomb)


;; Django
(evil-leader/set-key (kbd "dj") 'helm-django-manage)


;; Folding
(define-key evil-normal-state-map (kbd "za") 'origami-toggle-node)
(define-key evil-normal-state-map (kbd "zM") 'origami-close-all-nodes)
(define-key evil-normal-state-map (kbd "zR") 'origami-open-all-nodes)

;;; hotkeys.el ends here

