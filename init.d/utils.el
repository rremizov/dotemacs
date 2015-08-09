;;; package --- Summary


;;; Commentary:


;;; Code:

(defun run-in-eshell (command)
  "Run COMMAND in eshell."
  (with-current-buffer (pop-to-buffer (eshell))
    (eshell-return-to-prompt)
    (insert command)))


(defun do-if (exp callback)
  "Check, whether EXP is true.  If it is, pass it into CALLBACK."

  (when exp (funcall callback exp)))


(defmacro after (mode &rest body)
  "`eval-after-load' MODE evaluate BODY."
  (declare (indent defun))
  `(eval-after-load ,mode
     '(progn ,@body)))


(defun csscomb ()
  "Pass current buffer into csscomb."
  (interactive)

  (shell-command (concat "csscomb " buffer-file-name)))

;;; utils.el ends here

