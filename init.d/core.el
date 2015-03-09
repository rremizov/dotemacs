;; Relative line numbering
(require 'linum-relative)
(global-linum-mode 1)

;; 'y' instead of 'yes'
(fset 'yes-or-no-p 'y-or-n-p)

;; Completion in mini-buffer
(icomplete-mode 1)

;; Delete trailing whitespaces before saving
; (add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Calendar
(setq calendar-week-start-day 1
      calendar-date-style 'iso)

;; Semantic mode
(semantic-mode 1)
(setq semanticdb-default-save-directory "~/.emacs.d/local/semanticdb")

(require 'discover-my-major)

;; Bookmarks
(setq bookmark-default-file "~/.emacs.d/local/bookmarks"
      bookmark-save-flag 1)

