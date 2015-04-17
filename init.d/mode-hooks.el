;;; package -- Summary


;;; Commentary:


;;; Code:
(require 'less-css-mode)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js-mode))

(setq-default indent-tabs-mode nil)

(add-hook 'text-mode-hook
          (lambda ()
            (setq indent-tabs-mode t)
            (when (y-or-n-p "Auto Fill mode? ")
              (set-fill-column 80)
              (turn-on-auto-fill))))


(add-hook 'lisp-mode-hook
          (lambda ()
            (set (make-local-variable lisp-indent-function)
                 'common-lisp-indent-function)))


(add-hook 'ruby-mode-hook
          (lambda ()
            (setq tab-width 2)
            (setq evil-shift-width 2)))


;; Treat underscore as a part of word
(add-hook 'python-mode-hook
          (lambda ()
            (modify-syntax-entry ?_ "w")))

(add-hook 'js-mode-hook
          (lambda ()
            (modify-syntax-entry ?_ "w")))


;; Paredit mode
(add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook #'enable-paredit-mode)
(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))

;;; mode-hooks.el ends here

