; (require 'package)

; (add-to-list 'package-archives
;              '("melpa" . "http://melpa.org/packages/") t)

; (when (< emacs-major-version 24)
;   (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

; (package-initialize)

; (defadvice package-compute-transaction
;   (before package-compute-transaction-reverse (package-list requirements) activate compile)
;     "reverse the requirements"
;     (setq requirements (reverse requirements))
;     (print requirements))

