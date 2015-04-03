(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/bundle/auto-complete/dict")
(ac-config-default)


;; Python
(require 'anaconda-mode)
(require 'ac-anaconda)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'ac-anaconda-setup)
(setq python-shell-virtualenv-path (getenv "VIRTUAL_ENV"))


;; Javascript
(require 'tern)
(require 'tern-auto-complete)
(tern-ac-setup)
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(setq tern-ac-on-dot t)

;; Use after changes in a `.tern-project` file
(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))

