(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/bundle/auto-complete/dict")
(ac-config-default)

(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

