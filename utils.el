;;; package --- Summary


;;; Commentary:


;;; Code:

(defun do-if (exp callback)
  "Check, whether EXP is true.  If it is, pass it into CALLBACK."

  (when exp (funcall callback exp)))


(defun add-to-env (filename path env)
  "Look for the FILENAME inside PATH.  Add folder with FILENAME to ENV."

  (do-if
   (locate-file filename
                (mapcar (lambda (item) (concat (expand-file-name ".") item))
                        path))

   (lambda (path)
     (setenv env
             (concat (replace-regexp-in-string (concat filename "$")
                                               ""
                                               path)
                     ":"
                     (getenv env)))

     (message (concat "[ENVIRONMENT] [" env "] " (getenv env))))))


(defmacro after (mode &rest body)
  "`eval-after-load' MODE evaluate BODY."
  (declare (indent defun))
  `(eval-after-load ,mode
     '(progn ,@body)))

;;; utils.el ends here

