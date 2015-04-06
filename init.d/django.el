;;; package --- Summary


;;; Commentary:


;;; Code:

(defun django-manage (command)
  "Call Django manage.py with COMMAND argument."

  (interactive "sCommand: ")

  (shell-command (concat "python " (locate-django-manage) " " command)
                 "*Django-Management*"
                 "*Django-Management*"))

;;; django.el ends here

