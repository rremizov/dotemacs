;;; package --- Summary:


;;; Commentary:


;;; Code:

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


;; ielm
(defun ielm-auto-complete ()
  "Enables `auto-complete' support in \\[ielm]."
  (setq ac-sources '(ac-source-functions
                     ac-source-variables
                     ac-source-features
                     ac-source-symbols
                     ac-source-words-in-same-mode-buffers))
  (add-to-list 'ac-modes 'inferior-emacs-lisp-mode))
(add-hook 'ielm-mode-hook 'ielm-auto-complete)

;;; autocomplete.el ends here

