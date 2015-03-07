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

