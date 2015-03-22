(eval-after-load 'info
  '(progn (info-initialize)
          (add-to-list 'Info-directory-list "~/.emacs.d/bundle/magit")))

(require 'magit)
(require 'git-gutter+)
(require 'git-gutter-fringe+)

(global-git-gutter+-mode t)
(git-gutter-fr+-minimal)

(set-face-foreground 'git-gutter-fr+-modified "yellow")
(set-face-foreground 'git-gutter-fr+-added    "green")
(set-face-foreground 'git-gutter-fr+-deleted  "red")

