;;; package --- Summary


;;; Commentary:


;;; Code:

(require 'projectile)
(require 'helm-projectile)
(projectile-global-mode)

;; Helm keeps changing the function's name
(defalias 'helm-buffers-list--match-fn 'helm-buffers-match-function)

(add-to-list 'projectile-other-file-alist '("js" "jsx" "less" "css"))
(add-to-list 'projectile-other-file-alist '("jsx" "js" "less" "css"))
(add-to-list 'projectile-other-file-alist '("less" "js" "jsx" "css"))
(add-to-list 'projectile-other-file-alist '("css" "js" "jsx" "less"))

;;; projectile.el ends here

