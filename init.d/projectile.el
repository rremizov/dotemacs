(require 'projectile)
(require 'helm-projectile)
(projectile-global-mode)

;; Helm keeps changing the function's name
(defalias 'helm-buffers-list--match-fn 'helm-buffers-match-function)

