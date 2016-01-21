;;; package --- Summary


;;; Commentary:


;;; Code:

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

;;; Install
(defvar default-packages
  '(cider
    clojure-mode
    clojure-mode-extra-font-locking
    dired-narrow
    dired-subtree
    edbi
    edbi-django
    go-eldoc
    go-mode
    hydra
    lua-mode
    origami
    rainbow-delimiters
    ranger
    super-save
    wanderlust
    yaml-mode)
  "A list of packages to ensure are installed at launch.")

(defun packages-installed-p ()
  (loop for p in default-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (packages-installed-p)
  (package-refresh-contents)
  (dolist (p default-packages)
    (when (not (package-installed-p p))
      (package-install p))))

;;; packages.el ends here

