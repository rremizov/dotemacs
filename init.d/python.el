;;; package --- Summary


;;; Commentary:


;;; Code:

(defun locate-django-project ()
  "Look for Django project."

  (when (getenv "PROJECTROOT")
    (do-if (locate-django-manage)
           (lambda (path) (replace-regexp-in-string "manage\.py$" "" path)))))


(defun locate-django-manage ()
  "Look for Django's manage.py script."

  (when (getenv "PROJECTROOT")
     (locate-file "manage.py"
                  (mapcar (lambda (item) (concat (getenv "PROJECTROOT") item))
                          '("" "/server/src")))))


(defun add-django-to-env (env)
  "Add Django project to ENV."

  (do-if (locate-django-project)
         (lambda (path)
           (setenv "DJANGO_SETTINGS_MODULE" "settings")
           (setenv env (concat path ":" (getenv env)))
           (message (concat "[ENVIRONMENT] [" env "] " (getenv env))))))


(defun use-ipython ()
  "Use ipython if it is available."

  (do-if (locate-file "ipython" exec-path)
         (lambda (path)
           (setq python-shell-interpreter "ipython"))))


(defun look-for-virtualenv (subdirectory)
  "Look for python virtualenv inside SUBDIRECTORY."

  (when (getenv "PROJECTROOT")
    (when (directory-files (getenv "PROJECTROOT")
                           nil
                           (concat "^" subdirectory "$"))

      (let ((virtualenv
             (concat (getenv "PROJECTROOT") "/" subdirectory "/")))

        (message (concat "[ENVIRONMENT] Detected python virtualenv at "
                         virtualenv))
        virtualenv))))


(defun enable-virtualenv ()
    "Enable virtualenv if it is available."

    (do-if
     (look-for-virtualenv "pyenv")
     (lambda (path)

       (add-to-list 'exec-path (concat path "bin/"))
       (setenv "PATH" (concat path "bin/:" (getenv "PATH")))
       (message (concat "[ENVIRONMENT] [PATH] " (getenv "PATH")))

       (setenv "VIRTUAL_ENV" path)
       (message (concat "[ENVIRONMENT] [VIRTUAL_ENV] " (getenv "VIRTUAL_ENV"))))))


(defun django-manage (command)
  "Call Django manage.py with COMMAND argument."

  (interactive "sCommand: ")

  (shell-command (concat "python " (locate-django-manage) " " command)
                 "*Django-Management*"
                 "*Django-Management*"))


(defun helm-django-manage-action (command)
  (run-in-eshell (concat "python " (locate-django-manage) " " command)))


(defun helm-django-management-sources ()
  "Parse alist of Django management command."
  (when (locate-django-manage)
    (let ((output
           (shell-command-to-string (concat "python " (locate-django-manage)))))
      (mapcar
       (lambda (x) (list `(name . ,(car x))
                    `(candidates . ,(cdr x))
                    `(action . (("Run in eshell" . helm-django-manage-action)))))

       (reduce
        (lambda (acc x)
          (if (string-match "^\\[.+\\]$" x)
              (append acc (list (list x)))
            (append
             (butlast acc)
             (list (append (car (last acc)) (list x))))))

        (remove-if
         (lambda (x) (string= "" x))
         (mapcar (lambda (s) (replace-regexp-in-string "^\s+" "" s))
                 (split-string
                  (substring output (string-match "^\\[.+\\]$" output))
                  "\n")))
        :initial-value '())))))


(defun helm-django-manage ()
  "Run django management command via helm."
  (interactive)
  (helm :buffer "*helm-django-management*"
        :sources (helm-django-management-sources)))

;;; python.el ends here

