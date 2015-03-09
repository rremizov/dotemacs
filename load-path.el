;; Plugins
(mapcar
  (lambda (path) (add-to-list 'load-path path))
  (mapcar
    (lambda (name) (concat "~/.emacs.d/bundle/" name))
    '("dash.el"
      "async"
      "elscreen"
      "epl"
      "makey"
      "pkg-info.el"
      "rich-minority"
      "s.el"

      "auto-highlight-symbol"
      "discover-my-major"
      "evil"
      "evil-leader"
      "evil-tabs"
      "helm"
      "linum-relative"
      "markdown-mode"
      "projectile"
      "smart-mode-line"
      "twittering-mode")))
      ; "color-theme"
      ; "solarized"

;; Themes
(mapcar
  (lambda (path) (add-to-list 'custom-theme-load-path path))
  (mapcar
    (lambda (name) (concat "~/.emacs.d/bundle/" name))
    '("zenburn"
      "solarized")))

