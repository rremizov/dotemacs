;; Plugins
(mapcar
  (lambda (path) (add-to-list 'load-path path))
  (mapcar
    (lambda (name) (concat "~/.emacs.d/bundle/" name))
    '("async"
      "dash.el"
      "elisp-json-rpc"
      "elscreen"
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
      "evil-tabs"
      "flycheck"
      "git-gutter-fringe-plus"
      "git-gutter-plus"
      "golden-ratio"
      "helm"
      "helm-descbinds"
      "helm-flycheck"
      "linum-relative"
      "magit"
      "markdown-mode"
      "projectile"
      "smart-mode-line"
      "tern/emacs"
      "twittering-mode"
      "undo-tree")))
      ; "color-theme"
      ; "solarized"

;; Themes
(mapcar
  (lambda (path) (add-to-list 'custom-theme-load-path path))
  (mapcar
    (lambda (name) (concat "~/.emacs.d/bundle/" name))
    '("zenburn"
      "solarized")))

