;;; package --- Summary


;;; Commentary:


;;; Code:

(when (directory-files "." nil "^\.git$")
  (setenv "PROJECTROOT" (expand-file-name ".")))

(add-django-to-env "PYTHONPATH")
(enable-virtualenv)
(use-ipython)

;;; environment.el ends here

