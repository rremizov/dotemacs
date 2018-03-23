;;; package -- Summary


;;; Commentary:


;;; Code:
(require 'less-css-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js-mode))
(add-to-list 'auto-mode-alist '("\\.lua\\'" . lua-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.eco\\'" . web-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(setq-default indent-tabs-mode nil)

;; (add-hook 'text-mode-hook
;;           (lambda ()
;;             (setq indent-tabs-mode t)
;;             (when (y-or-n-p "Auto Fill mode? ")
;;               (set-fill-column 80)
;;               (turn-on-auto-fill))))


(add-hook 'sql-mode-hook
          (lambda ()
            (setq tab-width 4)
            (setq evil-shift-width 4)))


(add-hook 'lisp-mode-hook
          (lambda ()
            (set (make-local-variable lisp-indent-function)
                 'common-lisp-indent-function)))


(add-hook 'html-mode-hook
          (lambda ()
            (setq sgml-basic-offset 4)
            (setq tab-width 4)
            (setq evil-shift-width 4)))


(add-hook 'scss-mode-hook
          (lambda ()
            (setq scss-compile-at-save nil)
            (setq tab-width 2)
            (setq evil-shift-width 2)))


(add-hook 'yaml-mode-hook
          (lambda ()
            (setq tab-width 2)
            (setq evil-shift-width 2)))


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


;; Golang
;; (add-hook 'go-mode-hook 'go-eldoc-setup)
(add-hook 'go-mode-hook
          (lambda ()
            (go-eldoc-setup)
            (setq indent-tabs-mode t)
            (setq tab-width 4)
            (setq evil-shift-width 4)))


;; Hotkeys
(add-hook 'python-mode-hook 'add-python-hotkeys)
(add-hook 'css-mode-hook 'add-css-hotkeys)
(add-hook 'less-mode-hook 'add-css-hotkeys)


;; Clojure & Cider
(require 'ac-cider)
(add-hook 'clojure-mode-hook 'subword-mode)
(add-hook 'cider-mode-hook 'eldoc-mode)
(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete"
  '(progn
     (add-to-list 'ac-modes 'cider-mode)
     (add-to-list 'ac-modes 'cider-repl-mode)))


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


;; Rainbow mode
(add-hook 'css-mode-hook #'rainbow-mode)
(add-hook 'less-mode-hook #'rainbow-mode)


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

