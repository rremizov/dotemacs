;;; package --- Summary:


;;; Commentary:


;;; Code:

(defhydra hydra-resize-split ()
  "resize"
  ("." evil-window-increase-width)
  ("," evil-window-decrease-width)
  ("=" evil-window-increase-height)
  ("-" evil-window-decrease-height))
(global-set-key (kbd "M->") #'hydra-resize-split/evil-window-increase-width)
(global-set-key (kbd "M-<") #'hydra-resize-split/evil-window-decrease-width)
(global-set-key (kbd "M-+") #'hydra-resize-split/evil-window-increase-height)
(global-set-key (kbd "M-_") #'hydra-resize-split/evil-window-decrease-height)

(defhydra hydra-zoom (global-map "<f2>")
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))


(defhydra hydra-git-gutter (:hint nil)
  "
Git gutter:
  _,_: next hunk        _s_tage hunk
  _._: previous hunk    _r_evert hunk
  _l_: recenter         _c_ommit hunk
"
  ("," git-gutter+-previous-hunk)
  ("." git-gutter+-next-hunk)
  ("c" git-gutter+-commit)
  ("r" git-gutter+-revert-hunks)
  ("s" git-gutter+-stage-hunks)
  ("l" recenter-top-bottom))
(eval-after-load 'git-gutter+
  '(progn
     (evil-leader/set-key (kbd "<")  #'hydra-git-gutter/git-gutter+-previous-hunk)
     (evil-leader/set-key (kbd ">")  #'hydra-git-gutter/git-gutter+-next-hunk)
     (evil-leader/set-key (kbd "gc") #'hydra-git-gutter/git-gutter+-commit)
     (evil-leader/set-key (kbd "hr") #'hydra-git-gutter/git-gutter+-revert-hunks)
     (evil-leader/set-key (kbd "hs") #'hydra-git-gutter/git-gutter+-stage-hunks)))


(evil-leader/set-key
  (kbd "f")
  (defhydra hydra-folding (:hint nil)
    "
  _o_pen node    _n_ext fold       toggle _r_ecursively
  _c_lose node   _p_revious fold   toggle _a_ll
  "
    ("o" origami-open-node)
    ("c" origami-close-node)
    ("n" origami-next-fold)
    ("p" origami-previous-fold)
    ("r" origami-recursively-toggle-node)
    ("a" origami-toggle-all-nodes)))

;;; hydra.el ends here

