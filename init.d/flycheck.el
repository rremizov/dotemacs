;;; package --- Summary


;;; Commentary:


;;; Code:
(require 'flycheck)
(require 'helm-flycheck)
(require 'flycheck-mypy)
;(require 'go-flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(flycheck-add-next-checker 'python-flake8 'python-pylint)
(flycheck-add-next-checker 'python-pylint 'python-mypy)

;;; flycheck.el ends here
