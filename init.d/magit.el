;;; package --- Summary


;;; Commentary:


;;; Code:

(eval-after-load 'info
  '(progn (info-initialize)
          (add-to-list 'Info-directory-list "~/.emacs.d/bundle/magit")))

(require 'magit)
;; (require 'git-gutter+)
;; (require 'git-gutter-fringe+)

;; (global-git-gutter+-mode t)
;; (git-gutter-fr+-minimal)

;; (setq git-gutter-fr+-side 'right-fringe)
;; (set-face-foreground 'git-gutter-fr+-modified "yellow")
;; (set-face-foreground 'git-gutter-fr+-added    "green")
;; (set-face-foreground 'git-gutter-fr+-deleted  "red")

;;; magit.el ends here

