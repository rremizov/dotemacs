(add-hook 'text-mode-hook
	(lambda()
		(setq tab-width 4)
		(setq indent-tabs-mode t)
		(when (y-or-n-p "Auto Fill mode? ")
			(set-fill-column 60)
			(turn-on-auto-fill))
))

(add-hook 'python-mode-hook
	(lambda()
		(setq tab-width 4)
		(setq indent-tabs-mode t)
))
