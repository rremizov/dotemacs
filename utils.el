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


(provide 'utils)
;;; utils.el ends here

