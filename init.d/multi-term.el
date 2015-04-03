(defmacro ad-macro-p (definition)
  ;;"non-nil if DEFINITION is a macro."
  (` (eq (car-safe (, definition)) 'macro)))


(defun ad-advised-definition-p (definition)
  ;;"non-nil if DEFINITION was generated from advice information."
  (if (or (ad-lambda-p definition)
          (ad-macro-p definition)
          (ad-compiled-p definition))
      (let ((docstring (ad-docstring definition)))
        (and (stringp docstring)
             (string-match
              ad-advised-definition-docstring-regexp docstring)))))

(load (expand-file-name "~/.emacs.d/bundle/multi-term/multi-term.el"))
(require 'multi-term)

(defun last-term-buffer (l)
  "Return most recently used term buffer."
  (when l
    (if (eq 'term-mode (with-current-buffer (car l) major-mode))
    (car l) (last-term-buffer (cdr l)))))

(defun get-term ()
  "Switch to the term buffer last used, or create a new one if
none exists, or if the current buffer is already a term."
  (interactive)
  (let ((b (last-term-buffer (buffer-list))))
    (if (or (not b) (eq 'term-mode major-mode))
    (multi-term)
      (switch-to-buffer b))))

(when (require 'multi-term nil t)
  (global-set-key (kbd "<f5>") 'get-term)
  (global-set-key (kbd "<C-next>") 'multi-term-next)
  (global-set-key (kbd "<C-prior>") 'multi-term-prev)
  (setq multi-term-buffer-name "term"
        multi-term-program "/bin/bash"))

(when (require 'term nil t)
  (setq term-bind-key-alist
        (list (cons "C-c C-c" 'term-interrupt-subjob)
              (cons "C-p" 'previous-line)
              (cons "C-n" 'next-line)
              (cons "M-f" 'term-send-forward-word)
              (cons "M-b" 'term-send-backward-word)
              (cons "C-c C-j" 'term-line-mode)
              (cons "C-c C-k" 'term-char-mode)
              (cons "M-DEL" 'term-send-backward-kill-word)
              (cons "M-d" 'term-send-forward-kill-word)
              (cons "<C-left>" 'term-send-backward-word)
              (cons "<C-right>" 'term-send-forward-word)
              (cons "C-r" 'term-send-reverse-search-history)
              (cons "M-p" 'term-send-raw-meta)
              (cons "M-y" 'term-send-raw-meta)
              (cons "C-y" 'term-send-raw))))

