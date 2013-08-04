(add-hook 'text-mode-hook
	(lambda()
		(setq tab-width 4)
		(setq indent-tabs-mode t)
		(when (y-or-n-p "Auto Fill mode? ")
			(set-fill-column 60)
			(turn-on-auto-fill))))

(add-hook 'python-mode-hook
	(lambda()
		(setq tab-width 4)
		(setq indent-tabs-mode nil)))

(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook
	(lambda()
		(setq tab-width 4)
		(setq indent-tabs-mode t)))

