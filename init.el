;; Load slime-helper and sbcl
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")

;; Load paredit
(load (expand-file-name "~/.emacs.d/bundle/paredit/paredit.el"))
(autoload 'enable-paredit-mode
          "paredit" "Turn on pseudo-structural editing of Lisp code." t)

;; Add plugins to load path
(load (expand-file-name "~/.emacs.d/load-path.el"))


;; Load `after` macro
(load (expand-file-name "~/.emacs.d/after.el"))

;; Load init.d
(mapcar
  'load
  (mapcar
    (lambda (file-name) (concat "~/.emacs.d/init.d/" file-name ".el"))
    '("appearance"
      "autosaves-and-backups"
      "browse-url"
      "clipboard"
      "core"
      "custom"
      "hotkeys"
      "linum-off"
      "mode-hooks"
      "modeline"
      "tabs"

      "markdown-mode"
      "multi-term"
      "org-mode"
      "twittering-mode"
      "wanderlust"
      "magit"

      "helm"
      "projectile"
      "evil")))

;; Load experimental.el
(load (expand-file-name "~/.emacs.d/experimental.el"))

;; File for storing customization information
(setq custom-file "~/.emacs.d/init.d/custom.el")

