Emacs dotfiles.
===============


Plugins.
--------

*	[ac-anaconda][ac-anaconda]
*	[ac-cider][ac-cider]
*	[ace-jump-mode][ace-jump-mode]
*	[anaconda-mode][anaconda-mode]
*	[async][async]
*	[auto-complete][auto-complete]
*	[auto-highlight-symbol][auto-highlight-symbol]
*	[color-theme][color-theme]
*	[dash.el][dash.el]
*	[discover-my-major][discover-my-major]
*	[elisp-json-rpc][elisp-json-rpc]
*	[epl][epl]
*	[evil-leader][evil-leader]
*	[evil-matchit][evil-matchit]
*	[evil-numbers][evil-numbers]
*	[evil-snipe][evil-snipe]
*	[evil-surround][evil-surround]
*	[evil][evil]
*	[eyebrowse][eyebrowse]
*	[f.el][f.el]
*	[flycheck][flycheck]
*	[fringe-helper.el][fringe-helper.el]
*	[git-gutter-fringe-plus][git-gutter-fringe-plus]
*	[git-gutter-plus][fringe-helper.el]
*	[git-modes][git-modes]
*	[golden-ratio][golden-ratio]
*	[helm-descbinds][helm-descbinds]
*	[helm-flycheck][helm-flycheck]
*	[helm][helm]
*	[less-css-mode][less-css-mode]
*	[linum-relative][linum-relative]
*	[magit][magit]
*	[makey][makey]
*	[markdown-mode][markdown-mode]
*	[multi-term][multi-term]
*	[paredit][paredit]
*	[peep-dired][peep-dired]
*	[pkg-info][pkg-info]
*	[popup-el][popup-el]
*	[projectile][projectile]
*	[rich-minority][rich-minority]
*	[s][s]
*	[semantic-stickyfunc-enhance][semantic-stickyfunc-enhance]
*	[smart-mode-line][smart-mode-line]
*	[solarized][solarized]
*	[tern][tern]
*	[twittering mode][twittering-mode]
*	[undo-tree][undo-tree]
*	[wanderlust][wanderlust]
*	[zenburn][zenburn]


Dependencies.
-------------

*   Emacs 24.4+
*	[Anonymous Pro fonts][anonymous-pro]


Installation.
-------------

	git clone git://github.com/rremizov/dotemacs.git ~/.emacs.d
	cd ~/.emacs.d
	./pull
	./init


How to setup and configure Common Lisp environment
===========================================
_using Emacs + SLIME and Steel Bank CL._

__Install and configure Emacs__

	sudo aptitude install emacs
	git clone git://github.com/rremizov/dotemacs.git ~/.emacs.d
	cd ~/.emacs.d
	git submodule init && git submodule update

__Install Lisp implementation and library manager__

	sudo aptitude install sbcl cl-quicklisp

__Go into Lisp shell, install and configure `quicklisp`__

	sbcl --load /usr/share/cl-quicklisp/quicklisp.lisp
	(quicklisp-quickstart:install)
	(ql:add-to-init-file)

__Go into Lisp shell, load `SLIME`__

	sbcl
	(ql:quickload "quicklisp-slime-helper")


To remove a submodule you need to:
----------------------------------

1. Delete the relevant section from the `.gitmodules` file.
2. Stage the .gitmodules changes `git add .gitmodules`
3. Delete the relevant section from `.git/config`.
4. Run `git rm --cached path_to_submodule` (no trailing slash).
5. Run `rm -rf .git/modules/path_to_submodule`
6. Commit `git commit -m "Removed submodule <name>"`
7. Delete the now untracked submodule files: `rm -rf path_to_submodule`


[ac-anaconda]: https://github.com/proofit404/ac-anaconda.git
[ac-cider]: https://github.com/clojure-emacs/ac-cider.git
[ace-jump-mode]: https://github.com/winterTTr/ace-jump-mode.git
[anaconda-mode]: https://github.com/proofit404/anaconda-mode.git
[anonymous-pro]: http://www.marksimonson.com/fonts/view/anonymous-pro
[async]: https://github.com/jwiegley/emacs-async.git
[auto-complete]: https://github.com/auto-complete/auto-complete.git
[auto-highlight-symbol]: https://github.com/gennad/auto-highlight-symbol.git
[color-theme]: http://www.nongnu.org/color-theme/
[dash.el]: https://github.com/magnars/dash.el.git
[discover-my-major]: https://github.com/steckerhalter/discover-my-major.git
[elisp-json-rpc]: https://github.com/skeeto/elisp-json-rpc.git
[epl]: https://github.com/cask/epl.git
[evil-leader]: https://github.com/cofi/evil-leader.git
[evil-matchit]: https://github.com/redguardtoo/evil-matchit.git
[evil-numbers]: https://github.com/cofi/evil-numbers.git
[evil-snipe]: https://github.com/hlissner/evil-snipe.git
[evil-surround]: https://github.com/timcharper/evil-surround.git
[evil]: https://bitbucket.org/lyro/evil/wiki/Home
[eyebrowse]: https://github.com/wasamasa/eyebrowse.git
[f.el]: https://github.com/rejeep/f.el.git
[flycheck]: https://github.com/flycheck/flycheck.git
[fringe-helper.el]: https://github.com/nschum/fringe-helper.el.git
[git-gutter-fringe-plus]: https://github.com/nonsequitur/git-gutter-fringe-plus.git
[git-gutter-plus]: https://github.com/nonsequitur/git-gutter-plus.git
[git-modes]: https://github.com/magit/git-modes.git
[golden-ratio]: https://github.com/roman/golden-ratio.el.git
[helm-descbinds]: https://github.com/emacs-helm/helm-descbinds.git
[helm-flycheck]: https://github.com/yasuyk/helm-flycheck.git
[helm]: https://github.com/emacs-helm/helm.git
[less-css-mode]: https://github.com/purcell/less-css-mode.git
[linum-relative]: https://github.com/coldnew/linum-relative
[luakit]: https://github.com/mason-larobina/luakit/
[magit]: https://github.com/magit/magit.git
[makey]: https://github.com/mickeynp/makey.git
[markdown-mode]: http://www.emacswiki.org/emacs/MarkdownMode
[multi-term]: http://www.emacswiki.org/emacs/MultiTerm
[paredit]: http://mumble.net/~campbell/emacs/paredit.el
[peep-dired]: https://github.com/asok/peep-dired.git
[pkg-info]: https://github.com/lunaryorn/pkg-info.el.git
[popup-el]: https://github.com/auto-complete/popup-el.git
[projectile]: https://github.com/bbatsov/projectile.git
[quicklisp]: http://www.quicklisp.org/
[rich-minority]: https://github.com/Bruce-Connor/rich-minority.git
[s]: https://github.com/magnars/s.el.git
[sbcl]: http://www.sbcl.org/
[semantic-stickyfunc-enhance]: https://github.com/tuhdo/semantic-stickyfunc-enhance.git
[slime]: http://common-lisp.net/project/slime/
[smart-mode-line]: https://github.com/Bruce-Connor/smart-mode-line.git
[solarized]: https://github.com/sellout/emacs-color-theme-solarized
[tern]: https://github.com/marijnh/tern.git
[twittering-mode]: https://github.com/hayamiz/twittering-mode/
[undo-tree]: http://www.dr-qubit.org/undo-tree/undo-tree-0.6.4.el
[wanderlust]: http://melpa.org/#/wanderlust
[wanderlust]: https://github.com/wanderlust/wanderlust
[zenburn]: https://github.com/bbatsov/zenburn-emacs.git

