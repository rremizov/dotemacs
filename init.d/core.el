(require 'discover-my-major)
(require 'golden-ratio)

;; Relative line numbering
(require 'linum-relative)
(global-linum-mode 1)

;; 'y' instead of 'yes'
(fset 'yes-or-no-p 'y-or-n-p)

;; Completion in mini-buffer
(icomplete-mode 1)

;; Delete trailing whitespaces before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Calendar
(setq calendar-week-start-day 1
      calendar-date-style 'iso)

;; Semantic mode
(semantic-mode 1)
(setq semanticdb-default-save-directory "~/.emacs.d/local/semanticdb")

;; Bookmarks
(setq bookmark-default-file "~/.emacs.d/local/bookmarks"
      bookmark-save-flag 1)

;; Scrolling
(setq mouse-wheel-follow-mouse t
      mouse-wheel-progressive-speed nil
      mouse-wheel-scroll-amount '(3 ((shift) . 3) ((control) . nil))
      redisplay-dont-pause t
      scroll-conservatively 10000
      scroll-margin 0
      scroll-preserve-screen-position 1
      scroll-step 1)


;; Undo tree
(require 'undo-tree)
(global-undo-tree-mode 1)
(defalias 'redo 'undo-tree-redo)


;; Matchit
(require 'evil-matchit)
(global-evil-matchit-mode 1)


;; Electric pair mode
(electric-pair-mode 1)

