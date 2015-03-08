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

