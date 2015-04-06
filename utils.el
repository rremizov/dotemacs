;;; package --- Summary


;;; Commentary:


;;; Code:

(when (directory-files "." nil "^\.git$")
  (setenv "PROJECTROOT" (expand-file-name ".")))


(defun do-if (exp callback)
  "Check, whether EXP is true.  If it is, pass it into CALLBACK."

  (when exp (funcall callback exp)))


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
           (setenv env (concat path ":" (getenv env)))
           (message (concat "[ENVIRONMENT] [" env "] " (getenv env))))))


(defun use-django-shell ()
  "Use Django shell if it is available."

  (do-if (locate-django-project)
         (lambda (path)
           (setenv "DJANGO_SETTINGS_MODULE" "settings"))))


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


(defmacro after (mode &rest body)
  "`eval-after-load' MODE evaluate BODY."
  (declare (indent defun))
  `(eval-after-load ,mode
     '(progn ,@body)))

;;; utils.el ends here

