;; Leader
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(setq evil-leader/in-all-states 1)


;; Helm
(define-key evil-normal-state-map " " 'helm-mini)
(global-set-key (kbd "M-x") 'helm-M-x)

