;;; package --- Summary


;;; Commentary:


;;; Code:
(require 'flycheck)
(require 'helm-flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(flycheck-add-next-checker 'python-flake8 'python-pylint)

;;; flycheck.el ends here

