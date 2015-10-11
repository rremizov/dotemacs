;;; package --- Summary:


;;; Commentary:


;;; Code:


;; Plugins
(mapc
  (lambda (path) (add-to-list 'load-path path))
  (mapcar
    (lambda (name) (concat "~/.emacs.d/bundle/" name))
    '("async"
      "dash.el"
      "elisp-json-rpc"
      "epl"
      "f.el"
      "fringe-helper.el"
      "git-modes"
      "let-alist"
      "makey"
      "pkg-info.el"
      "popup-el"
      "rich-minority"
      "s.el"

      "ac-anaconda"
      "ac-cider"
      "ace-jump-mode"
      "anaconda-mode"
      "auto-complete"
      "auto-highlight-symbol"
      "discover-my-major"
      "evil"
      "evil-leader"
      "evil-matchit"
      "evil-numbers"
      "evil-snipe"
      "evil-surround"
      "eyebrowse"
      "flycheck"
      "git-gutter-fringe-plus"
      "git-gutter-plus"
      "git-timemachine"
      "golden-ratio"
      "helm"
      "helm-descbinds"
      "helm-flycheck"
      "less-css-mode"
      "linum-relative"
      "magit"
      "markdown-mode"
      "peep-dired"
      "projectile"
      "semantic-stickyfunc-enhance"
      "smart-mode-line"
      "tern/emacs"
      "twittering-mode"
      "undo-tree")))
      ; "color-theme"
      ; "solarized"

;; Themes
(mapc
  (lambda (path) (add-to-list 'custom-theme-load-path path))
  (mapcar
    (lambda (name) (concat "~/.emacs.d/bundle/" name))
    '("zenburn"
      "solarized")))

;;; load-path.el ends here

