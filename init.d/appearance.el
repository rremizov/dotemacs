(custom-set-variables '(column-number-mode t) ;; Display column number
                      '(scroll-bar-mode nil)  ;; Hide scroll bar
                      '(menu-bar-mode nil)    ;; Hide menu bar
                      '(tool-bar-mode nil))   ;; Hide toolbar

;; Relative line numbering
(load (expand-file-name "~/.emacs.d/bundle/linum-relative/linum-relative.el"))
(require 'linum-relative)
(global-linum-mode 1)

;; Create a reasonable title bar
(add-hook 'window-configuration-change-hook
          (lambda ()
            (setq frame-title-format
                  (replace-regexp-in-string
                    (getenv "HOME") "~" (or buffer-file-name "%b")))))

;; Font and it's size
(set-face-attribute 'default nil :font "Anonymous Pro" :height 120)

;; Solarized color theme
;; =====================

;; Emacs 23
;; ---------------------
;; Load color theme "module"
; (add-to-list 'load-path "~/.emacs.d/bundle/color-theme/")
; (require 'color-theme)
; (color-theme-initialize)
;; Solarized color theme itself
; (add-to-list 'load-path "~/.emacs.d/bundle/solarized/")
; (require 'color-theme-solarized)
; (color-theme-solarized-dark)

;; Emacs 24
;; ---------------------
(add-to-list 'custom-theme-load-path "~/.emacs.d/bundle/solarized")
(load-theme 'solarized-dark t)

; (add-to-list 'custom-theme-load-path "~/.emacs.d/bundle/zenburn/")
; (load-theme 'zenburn t)

