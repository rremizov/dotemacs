;; Sessions (:mksession in Vim)

;; Emacs have the commands M-x desktop-save and desktop-read.
;; To have it automatically saved/restored put into
;; the .emacs: (desktop-save-mode 1). If you want to start emacs
;; without auto loading the session (if you configured it), the
;; command is emacs --no-desktop. But Emacs sessions doesn't know
;; about elscreens (which evil-tabs use for creating Vim-like tabs)
;; so if you want to save and restore full sessions including tabs
;; copy these functions into your config file and assign them some shortcut:

;; Save session including tabs
;; http://stackoverflow.com/questions/22445670/save-and-restore-elscreen-tabs-and-split-frames
(defun session-save ()
    "Store the elscreen tab configuration."
    (interactive)
    (if (desktop-save emacs-configuration-directory)
        (with-temp-file elscreen-tab-configuration-store-filename
            (insert (prin1-to-string (elscreen-get-screen-to-name-alist))))))

;; Load session including tabs
(defun session-load ()
    "Restore the elscreen tab configuration."
    (interactive)
    (if (desktop-read)
        (let ((screens (reverse
                        (read
                         (with-temp-buffer
                          (insert-file-contents elscreen-tab-configuration-store-filename)
                          (buffer-string))))))
            (while screens
                (setq screen (car (car screens)))
                (setq buffers (split-string (cdr (car screens)) ":"))
                (if (eq screen 0)
                    (switch-to-buffer (car buffers))
                    (elscreen-find-and-goto-by-buffer (car buffers) t t))
                (while (cdr buffers)
                    (switch-to-buffer-other-window (car (cdr buffers)))
                    (setq buffers (cdr buffers)))
                (setq screens (cdr screens))))))
