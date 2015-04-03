(require 'helm-config)
(helm-mode 1)
(helm-autoresize-mode 1)

(setq helm-buffers-fuzzy-matching t
      helm-M-x-fuzzy-match t
      helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match t
      helm-recentf-fuzzy-match t)

(require 'helm-descbinds)
(helm-descbinds-mode)

