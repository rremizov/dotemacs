(require 'evil)

;; Change cursor color depending on mode
(setq evil-emacs-state-cursor '("#8faf9f" box))
(setq evil-normal-state-cursor '("#8faf9f" box))
(setq evil-visual-state-cursor '("#53665D" box))
(setq evil-insert-state-cursor '("#8faf9f" bar))
(setq evil-replace-state-cursor '("#BA7D77" box))
(setq evil-operator-state-cursor '("#8faf9f" hollow))

;; Default evil-modes
(loop
 for (mode . state)
 in '((term-mode . emacs)
      (dired-mode . emacs)
      (eshell-mode . emacs)
      (org-mode . emacs))
 do (evil-set-initial-state mode state))

(evil-mode 1)

;; Save buffer on exit from insert mode
; (add-hook 'evil-insert-state-exit-hook 'save-buffer)

