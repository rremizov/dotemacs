;;; package --- Summary


;;; Commentary:


;;; Code:

(add-to-env "manage.py" '("" "/server/src") "PYTHONPATH")

(when (directory-files "." nil "pyenv")
  (message "[ENVIRONMENT] Detected python virtualenv")

  (add-to-list 'exec-path (concat (expand-file-name ".") "/pyenv/bin/"))
  (setenv "PATH" (concat (expand-file-name ".") "/pyenv/bin/:" (getenv "PATH")))
  (message (concat "[ENVIRONMENT] [PATH] " (getenv "PATH")))

  (setenv "VIRTUAL_ENV" (concat (expand-file-name ".") "/pyenv/"))
  (message (concat "[ENVIRONMENT] [VIRTUAL_ENV] " (getenv "VIRTUAL_ENV"))))

;;; environment.el ends here

