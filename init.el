;; Load slime-helper and sbcl
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")

;; Load paredit
(load (expand-file-name "~/.emacs.d/bundle/paredit/paredit.el"))
(autoload 'enable-paredit-mode
          "paredit" "Turn on pseudo-structural editing of Lisp code." t)

;; Add plugins to load path
(load (expand-file-name "~/.emacs.d/load-path.el"))

;; Load init.d
(mapcar
  'load
  (mapcar
	(lambda (file-name) (concat "~/.emacs.d/init.d/" file-name))
	'("appearance.el"
	  "autosaves-and-backups.el"
	  "browse-url.el"
	  "clipboard.el"
	  "core.el"
	  "custom.el"
	  "hotkeys.el"
	  "linum-off.el"
	  "mode-hooks.el"
	  "modeline.el"
	  "tabs.el" 
	  "markdown-mode.el"
	  "multi-term.el"
	  "org-mode.el"
	  "twittering-mode.el"
	  "wanderlust.el"
	  "evil.el")))

;; Load experimental.el
(load (expand-file-name "~/.emacs.d/experimental.el"))

;; File for storing customization information
(setq custom-file "~/.emacs.d/init.d/custom.el")

