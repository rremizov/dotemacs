(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/bundle/auto-complete/dict")
(ac-config-default)

;; Python
(require 'anaconda-mode)
(require 'ac-anaconda)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'ac-anaconda-setup)
(setq python-shell-virtualenv-path (getenv "VIRTUAL_ENV"))

