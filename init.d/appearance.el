;;; package --- Summary


;;; Commentary:


;;; Code:

;; Hide the startup messages
(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)


(custom-set-variables '(column-number-mode t) ;; Display column number
                      '(scroll-bar-mode nil)  ;; Hide scroll bar
                      '(menu-bar-mode nil)    ;; Hide menu bar
                      '(tool-bar-mode nil))   ;; Hide toolbar


;; Maximize frame on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))


;; Create a reasonable title bar
(add-hook 'window-configuration-change-hook
          (lambda ()
            (setq frame-title-format
                  (replace-regexp-in-string
                    (getenv "HOME") "~" (or buffer-file-name "%b")))))

;; Font and it's size
(set-face-attribute 'default nil :font "Anonymous Pro" :height 120)
(setq-default line-spacing 2)

;; Highlight current line
(global-hl-line-mode 1)

;; Highlight parenthesis pairs
(show-paren-mode 1)

;; Highlight symbol under cursor
(require 'auto-highlight-symbol)
(global-auto-highlight-symbol-mode t)


;; Prettify symbols mode
(add-hook 'python-mode-hook
          (lambda ()
            (setq prettify-symbols-alist
                  '(("lambda" . ?λ)
                    ("sum" . ?Σ)))
            (prettify-symbols-mode 1)))

(add-hook 'js-mode-hook
          (lambda ()
            (setq prettify-symbols-alist
                  '(("function" . ?ƒ)))
            (prettify-symbols-mode 1)))

(defun lisp-mode-symbols ()
  (setq prettify-symbols-alist
	'(("lambda" . ?λ)
          ("defun" . ?ƒ)))
  (prettify-symbols-mode 1))

(add-hook 'emacs-lisp-mode-hook 'lisp-mode-symbols)
(add-hook 'eval-expression-minibuffer-setup-hook 'lisp-mode-symbols)
(add-hook 'ielm-mode-hook 'lisp-mode-symbols)
(add-hook 'lisp-interaction-mode-hook 'lisp-mode-symbols)
(add-hook 'lisp-mode-hook 'lisp-mode-symbols)
(add-hook 'scheme-mode-hook 'lisp-mode-symbols)
(add-hook 'slime-repl-mode-hook 'lisp-mode-symbols)


;; Solarized color theme
;; =====================

;; Emacs 23
;; ---------------------
;; Load color theme "module"
; (require 'color-theme)
; (color-theme-initialize)
;; Solarized color theme itself
; (require 'color-theme-solarized)
; (color-theme-solarized-dark)

;; Emacs 24
;; ---------------------
; (load-theme 'solarized-dark t)
(load-theme 'zenburn t)

;;; appearance.el ends here

