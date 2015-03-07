;; Plugins
(mapcar
  (lambda (path) (add-to-list 'load-path path))
  (mapcar
    (lambda (name) (concat "~/.emacs.d/bundle/" name))
    '("dash.el/"
      "async/"
      "elscreen/"
      "rich-minority/"

      "auto-highlight-symbol/"
      "evil-leader/"
      "evil-tabs/"
      "evil/"
      "helm/"
      "linum-relative/"
      "markdown-mode/"
      "smart-mode-line/"
      "twittering-mode/")))
      ; "color-theme"
      ; "solarized"

;; Themes
(mapcar
  (lambda (path) (add-to-list 'custom-theme-load-path path))
  (mapcar
    (lambda (name) (concat "~/.emacs.d/bundle/" name))
    '("zenburn/"
      "solarized/")))

