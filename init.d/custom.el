(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-comphist-file "/home/enlighter/.emacs.d/local/ac-comphist.dat")
 '(ahs-idle-interval 0.5)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("c5a044ba03d43a725bd79700087dea813abcb6beb6be08c7eb3303ed90782482" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" default)))
 '(delete-trailing-lines nil)
 '(desktop-auto-save-timeout 3)
 '(desktop-path (quote (".")))
 '(desktop-restore-frames nil)
 '(desktop-save-mode t)
 '(eshell-directory-name "~/.emacs.d/local/eshell/")
 '(eshell-history-file-name "/home/enlighter/.emacs.d/local/eshell/history")
 '(eyebrowse-new-workspace t)
 '(eyebrowse-wrap-around t)
 '(flycheck-python-mypy-args (quote ("--ignore-missing-imports" "--strict-optional")))
 '(flycheck-temp-prefix ".flycheck")
 '(image-dired-dir "~/.emacs.d/local/image-dired")
 '(menu-bar-mode nil)
 '(org-agenda-custom-commands
   (quote
    (("cx" "Now" tags-todo "SCHEDULED<=\"<now>\""
      ((org-agenda-overriding-header "Now")
       (org-agenda-view-columns-initially t)
       (org-agenda-overriding-columns-format "%30ITEM %PRIORITY %SCHEDULED %TODO %6Effort(Estim){:}")
       (org-agenda-sorting-strategy
        (quote
         (priority-down user-defined-up)))
       (org-agenda-cmp-user-defined
        (cmp-date-property "SCHEDULED")))))))
 '(org-agenda-files (quote ("~/org")))
 '(org-lowest-priority 69)
 '(projectile-known-projects-file "/home/enlighter/.emacs.d/local/projectile-bookmarks.eld")
 '(recentf-save-file "~/.emacs.d/local/recentf")
 '(require-final-newline t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-face ((t (:underline t))))
 '(ahs-plugin-defalt-face ((t (:underline t)))))
