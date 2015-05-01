;;; package --- Summary


;;; Commentary:


;;; Code:

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
      (eshell-mode . emacs))
 do (evil-set-initial-state mode state))



(evil-mode 1)


;; Save buffer on exit from insert mode
(add-hook 'evil-insert-state-exit-hook
	  (lambda ()
	    (when (and (buffer-modified-p) (buffer-file-name))
	      (progn (save-buffer)))))


;; Change mode-line color by evil state
(lexical-let ((default-color
                (cons (face-background 'mode-line)
                      (face-foreground 'mode-line))))

     (add-hook 'post-command-hook
               (lambda ()
                 (let ((color (cond ((minibufferp) default-color)
                                    ((evil-insert-state-p) '("#434443" . "#ffffff"))
                                    ((evil-emacs-state-p) '("#434443" . "#ffffff"))
                                    ((buffer-modified-p) '("#434443" . "#ffffff"))
                                    (t default-color))))
                   (set-face-background 'mode-line (car color))
                   (set-face-foreground 'mode-line (cdr color))))))


;; Snipe
(require 'evil-snipe)
(global-evil-snipe-mode 1)

(setq evil-snipe-smart-case t
      evil-snipe-override-evil t
      evil-snipe-repeat-keys t
      evil-snipe-scope 'visible
      evil-snipe-repeat-scope 'whole-visible
      evil-snipe-count-scope nil
      evil-snipe-enable-highlight t
      evil-snipe-enable-incremental-highlight t)


;; Surround
(require 'evil-surround)
(global-evil-surround-mode 1)


;; Wanderlust
(add-hook 'wl-folder-mode-hook '(lambda () (evil-mode 0)))
(add-hook 'wl-summary-mode-hook '(lambda () (evil-mode 0)))
(add-hook 'wl-draft-mode-hook '(lambda () (evil-mode 0)))
(add-hook 'wl-score-mode-hook '(lambda () (evil-mode 0)))
(add-hook 'wl-plugged-mode-hook '(lambda () (evil-mode 0)))
(add-hook 'wl-message-mode-hook '(lambda () (evil-mode 0)))


;; git-timemachine
(require 'git-timemachine)
(eval-after-load 'git-timemachine
  '(progn
     (evil-make-overriding-map git-timemachine-mode-map 'normal)
     (add-hook 'git-timemachine-mode-hook #'evil-normalize-keymaps)))

;;; evil.el ends here

