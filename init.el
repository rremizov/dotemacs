;;; package --- Summary


;;; Commentary:


;;; Code:

;; Load slime-helper and sbcl
(when (directory-files (expand-file-name "~") nil "quicklisp")
  (when (directory-files (expand-file-name "~/quicklisp/") nil "slime-helper")
	(load (expand-file-name "~/quicklisp/slime-helper.el"))
	(setq inferior-lisp-program "sbcl")))


;; Load paredit
(load (expand-file-name "~/.emacs.d/bundle/paredit/paredit.el"))
(autoload 'enable-paredit-mode
          "paredit" "Turn on pseudo-structural editing of Lisp code." t)


;; Add plugins to load path
(load (expand-file-name "~/.emacs.d/load-path.el"))


;; Load init.d
(mapc
  'load
  (mapcar
    (lambda (file-name) (concat "~/.emacs.d/init.d/" file-name ".el"))
    '("python"
      "utils"
      "environment"

      "appearance"
      "autosaves-and-backups"
      "browse-url"
      "clipboard"
      "core"
      "packages"
      "custom"
      "hotkeys"
      "linum-off"
      "mode-hooks"
      "modeline"

      "clojure"
      "hydra"
      "indent-sql"
      "magit"
      "markdown-mode"
      "multi-term"
      "org-mode"
      "sql"
      "twittering-mode"
      "wanderlust"

      "autocomplete"
      "flycheck"
      "helm"
      "projectile"
      "evil"

      "experimental")))

;; File for storing customization information
(setq custom-file "~/.emacs.d/init.d/custom.el")

;;; init.el ends here

