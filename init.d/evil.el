(require 'evil)

;; Change cursor color depending on mode
(setq evil-emacs-state-cursor '("#8faf9f" box))
(setq evil-normal-state-cursor '("#8faf9f" box))
(setq evil-visual-state-cursor '("#53665D" box))
(setq evil-insert-state-cursor '("#8faf9f" bar))
(setq evil-replace-state-cursor '("#BA7D77" box))
(setq evil-operator-state-cursor '("#8faf9f" hollow))

(evil-mode 1)
