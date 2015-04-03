;;; package --- Summary


;;; Commentary:


;;; Code:

(defun update-pythonpath (filename path)
  "Look for the FILENAME inside PATH.  Add folder with FILENAME to pythonpath."

  (let ((path-to-filename
         (locate-file filename
                      (mapcar (lambda (item) (concat (expand-file-name ".") item))
                              path))))
    (when path-to-filename
      (setenv "PYTHONPATH"
              (concat (replace-regexp-in-string (concat filename "$")
                                                ""
                                                path-to-filename)
                      ":"
                      (getenv "PYTHONPATH")))

      (message (concat "[ENVIRONMENT] [PYTHONPATH] " (getenv "PYTHONPATH"))))))

(update-pythonpath "manage.py" '("" "/server/src"))


(when (directory-files "." nil "pyenv")
  (message "[ENVIRONMENT] Detected python virtualenv")

  (add-to-list 'exec-path (concat (expand-file-name ".") "/pyenv/bin/"))
  (setenv "PATH" (concat (expand-file-name ".") "/pyenv/bin/:" (getenv "PATH")))
  (message (concat "[ENVIRONMENT] [PATH] " (getenv "PATH")))

  (setenv "VIRTUAL_ENV" (concat (expand-file-name ".") "/pyenv/"))
  (message (concat "[ENVIRONMENT] [VIRTUAL_ENV] " (getenv "VIRTUAL_ENV"))))

;;; environment.el ends here

