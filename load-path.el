;; Plugins
(mapcar
  (lambda (path) (add-to-list 'load-path path))
  (mapcar
    (lambda (name) (concat "~/.emacs.d/bundle/" name))
    '("dash.el"
      "async"
      "elscreen"
      "elisp-json-rpc"
      "epl"
      "f.el"
      "fringe-helper.el"
      "git-modes"
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
      "git-gutter-fringe-plus"
      "git-gutter-plus"
      "golden-ratio"
      "helm"
      "helm-descbinds"
      "linum-relative"
      "magit"
      "markdown-mode"
      "projectile"
      "smart-mode-line"
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

