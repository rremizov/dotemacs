;;; package -- Summary


;;; Commentary:


;;; Code:
(require 'less-css-mode)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js-mode))

(setq-default indent-tabs-mode nil)

;; (add-hook 'text-mode-hook
;;           (lambda ()
;;             (setq indent-tabs-mode t)
;;             (when (y-or-n-p "Auto Fill mode? ")
;;               (set-fill-column 80)
;;               (turn-on-auto-fill))))


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


;; Clojure & Cider
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'clojure-mode-hook 'subword-mode)


;; Paredit mode
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook #'enable-paredit-mode)
(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))


;; Rainbow delimiters
(add-hook 'cider-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
(add-hook 'lisp-mode-hook #'rainbow-delimiters-mode)
(add-hook 'python-mode-hook #'rainbow-delimiters-mode)


;; Origami
(require 'origami)
(add-hook 'clojure-mode-hook 'origami-mode)
(add-hook 'emacs-lisp-mode-hook 'origami-mode)
(add-hook 'lisp-mode-hook 'origami-mode)
(add-hook 'python-mode-hook 'origami-mode)
(add-hook 'js-mode-hook 'origami-mode)

;;; mode-hooks.el ends here

