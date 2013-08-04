;; INIT
;; ----
;; 1. Load slime-helper and sbcl
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")
;; 2. Load paredit
(load (expand-file-name "~/.emacs.d/paredit.el"))
(autoload 'enable-paredit-mode
	"paredit" "Turn on pseudo-structural editing of Lisp code." t)
;; 3. Load Emacs Lisp source code but hidden files
(let ((init-dir "~/.emacs.d/init.d/"))
	(dolist (file (directory-files init-dir))
		(when (string-match-p "\\`[^.].*\\.elc?\\'" file)
			(load-file (expand-file-name file init-dir)))))

;; File for storing customization information
(setq custom-file "~/.emacs.d/init.d/custom.el")

;; 'y' instead of 'yes'
(fset 'yes-or-no-p 'y-or-n-p)

;; Completion in mini-buffer
(icomplete-mode 1)

;; Delete trailing whitespaces before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Highlight parenthesis pairs
(show-paren-mode 1)

;; Calendar
(setq calendar-week-start-day 1
      calendar-date-style 'iso)

;; DISABLED OPTIONS
;; ----------------
;; Disable startup message
;(setq inhibit-startup-message t)
;; Cut and paste to the X clipboard
;(setq x-select-enable-clipboard t)
;; Paste at mouse pointer NOT at cursor
;(setq mouse-yank-at-point t)
