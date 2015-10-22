;;; package --- Summary:


;;; Commentary:


;;; Code:

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/bundle/auto-complete/dict")
(ac-config-default)


;; Python
(require 'anaconda-mode)
(require 'ac-anaconda)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'ac-anaconda-setup)
(setq python-shell-virtualenv-path (getenv "VIRTUAL_ENV"))


;; Golang
(require 'go-autocomplete)


;; Javascript
(require 'tern)
(require 'tern-auto-complete)
(tern-ac-setup)
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(setq tern-ac-on-dot t)

;; Use after changes in a `.tern-project` file
(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))


;; ielm
(defun ielm-auto-complete ()
  "Enables `auto-complete' support in \\[ielm]."
  (setq ac-sources '(ac-source-functions
                     ac-source-variables
                     ac-source-features
                     ac-source-symbols
                     ac-source-words-in-same-mode-buffers))
  (add-to-list 'ac-modes 'inferior-emacs-lisp-mode))
(add-hook 'ielm-mode-hook 'ielm-auto-complete)


;; Eshell
(defconst pcmpl-git-commands
  '("add"
    "bisect"
    "branch"
    "checkout"
    "clone"
    "commit"
    "diff"
    "fetch"
    "grep"
    "init"
    "log"
    "merge"
    "mv"
    "pull"
    "push"
    "rebase"
    "remote"
    "reset"
    "rm"
    "show"
    "status"
    "tag")
  "List of `git' commands.")


(defvar pcmpl-git-ref-list-cmd "git for-each-ref refs/ --format='%(refname)'"
  "The `git' command to run to get a list of refs.")


(defun pcmpl-git-remotes ()
  "Return a list of remote repositories."
  (split-string (shell-command-to-string "git remote")))


(defun pcmpl-git-get-refs (type)
  "Return a list of `git' refs filtered by TYPE."
  (with-temp-buffer
    (insert (shell-command-to-string pcmpl-git-ref-list-cmd))
    (goto-char (point-min))
    (let ((ref-list))
      (while (re-search-forward (concat "^refs/" type "/\\(.+\\)$") nil t)
        (add-to-list 'ref-list (match-string 1)))
      ref-list)))


(defun pcomplete/git ()
  "Completion for `git'."

  ;; Completion for the command argument.
  (pcomplete-here* pcmpl-git-commands)

  ;; complete files/dirs forever if the command is `add' or `rm'
  (cond
   ((pcomplete-match (regexp-opt '("add" "rm")) 1)
    (while (pcomplete-here (pcomplete-entries))))

   ((pcomplete-match (regexp-opt '("prune")) 1 1)
    (while (pcomplete-here (pcmpl-git-remotes))))

   ((pcomplete-match (regexp-opt '("remote")) 1)
    (while (pcomplete-here '("add"
                             "remove"
                             "set-branches"
                             "set-url"
                             "update"
                             "prune"
                             "rename"
                             "set-head"
                             "show"))))

   ;; provide branch completion for the command `checkout'.
   ((pcomplete-match (regexp-opt '("checkout" "branch" "merge")) 1)
    (pcomplete-here* (pcmpl-git-get-refs "heads")))))


(defun ac-pcomplete ()
  ;; eshell uses `insert-and-inherit' to insert a \t if no completion
  ;; can be found, but this must not happen as auto-complete source
  (flet ((insert-and-inherit (&rest args)))
    ;; this code is stolen from `pcomplete' in pcomplete.el
    (let* (tramp-mode ;; do not automatically complete remote stuff
           (pcomplete-stub)
           (pcomplete-show-list t) ;; inhibit patterns like * being deleted
           pcomplete-seen pcomplete-norm-func
           pcomplete-args pcomplete-last pcomplete-index
           (pcomplete-autolist pcomplete-autolist)
           (pcomplete-suffix-list pcomplete-suffix-list)
           (candidates (pcomplete-completions))
           (beg (pcomplete-begin))
           ;; note, buffer text and completion argument may be
           ;; different because the buffer text may bet transformed
           ;; before being completed (e.g. variables like $HOME may be
           ;; expanded)
           (buftext (buffer-substring beg (point)))
           (arg (nth pcomplete-index pcomplete-args)))
      ;; we auto-complete only if the stub is non-empty and matches
      ;; the end of the buffer text
      (when (and (not (zerop (length pcomplete-stub)))
                 (or (string= pcomplete-stub ; Emacs 23
                              (substring buftext
                                         (max 0
                                              (- (length buftext)
                                                 (length pcomplete-stub)))))
                     (string= pcomplete-stub ; Emacs 24
                              (substring arg
                                         (max 0
                                              (- (length arg)
                                                 (length pcomplete-stub)))))))
        ;; Collect all possible completions for the stub. Note that
        ;; `candidates` may be a function, that's why we use
        ;; `all-completions`.
        (let* ((cnds (all-completions pcomplete-stub candidates))
               (bnds (completion-boundaries pcomplete-stub
                                            candidates
                                            nil
                                            ""))
               (skip (- (length pcomplete-stub) (car bnds))))
          ;; We replace the stub at the beginning of each candidate by
          ;; the real buffer content.
          (mapcar #'(lambda (cand) (concat buftext (substring cand skip)))
                  cnds))))))


(defvar ac-source-pcomplete
  '((candidates . ac-pcomplete)))

(add-hook 'eshell-mode-hook #'(lambda () (setq ac-sources '(ac-source-pcomplete))))
(add-to-list 'ac-modes 'eshell-mode)

;;; autocomplete.el ends here

