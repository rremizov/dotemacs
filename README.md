Emacs dotfiles.
===============

Plugins.
--------

*	[ace-jump-mode][ace-jump-mode]
*	[async][async]
*	[auto-highlight-symbol][auto-highlight-symbol]
*	[color-theme][color-theme]
*	[dash.el][dash.el]
*	[discover-my-major][discover-my-major]
*	[elscreen][elscreen]
*	[epl][epl]
*	[evil-leader][evil-leader]
*	[evil-numbers][evil-numbers]
*	[evil-snipe][evil-snipe]
*	[evil-surround][evil-surround]
*	[evil-tabs][evil-tabs]
*	[evil][evil]
*	[fringe-helper.el][fringe-helper.el]
*	[git-gutter-fringe-plus][git-gutter-fringe-plus]
*	[git-gutter-plus][fringe-helper.el]
*	[git-modes][git-modes]
*	[golden-ratio][golden-ratio]
*	[helm-descbinds][helm-descbinds]
*	[helm][helm]
*	[linum-relative][linum-relative]
*	[magit][magit]
*	[makey][makey]
*	[markdown-mode][markdown-mode]
*	[multi-term][multi-term]
*	[paredit][paredit]
*	[pkg-info][pkg-info]
*	[projectile][projectile]
*	[rich-minority][rich-minority]
*	[s][s]
*	[smart-mode-line][smart-mode-line]
*	[solarized][solarized]
*	[twittering mode][twittering-mode]
*	[undo-tree][undo-tree]
*	[zenburn][zenburn]


Dependencies.
-------------

Emacs 24.4+

*	[Anonymous Pro fonts][anonymous-pro]
*	[SLIME][slime]
*	[Steel Bank Common Lisp][sbcl]
*	[Wanderlust][wanderlust]
*	[multi-term][multi-term] requires `/bin/bash`
*	[quicklisp][quicklisp]
*	[twittering mode][twittering-mode]
	*	`notify-send` (on Debian available as `libnotify-bin` package)
	*	Other dependencies, described [here][twittering-mode].


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


[ace-jump-mode]: https://github.com/winterTTr/ace-jump-mode.git
[anonymous-pro]: http://www.marksimonson.com/fonts/view/anonymous-pro
[async]: https://github.com/jwiegley/emacs-async.git
[auto-highlight-symbol]: https://github.com/gennad/auto-highlight-symbol.git
[color-theme]: http://www.nongnu.org/color-theme/
[dash.el]: https://github.com/magnars/dash.el.git
[discover-my-major]: https://github.com/steckerhalter/discover-my-major.git
[elscreen]: https://github.com/knu/elscreen.git
[epl]: https://github.com/cask/epl.git
[evil-leader]: https://github.com/cofi/evil-leader.git
[evil-numbers]: https://github.com/cofi/evil-numbers.git
[evil-snipe]: https://github.com/hlissner/evil-snipe.git
[evil-surround]: https://github.com/timcharper/evil-surround.git
[evil-tabs]: https://github.com/krisajenkins/evil-tabs.git
[evil]: https://gitorious.org/evil/evil/
[fringe-helper.el]: https://github.com/nschum/fringe-helper.el.git
[git-gutter-fringe-plus]: https://github.com/nonsequitur/git-gutter-fringe-plus.git
[git-gutter-plus]: https://github.com/nonsequitur/git-gutter-plus.git
[git-modes]: https://github.com/magit/git-modes.git
[golden-ratio]: https://github.com/roman/golden-ratio.el.git
[helm-descbinds]: https://github.com/emacs-helm/helm-descbinds.git
[helm]: https://github.com/emacs-helm/helm.git
[linum-relative]: https://github.com/coldnew/linum-relative
[luakit]: https://github.com/mason-larobina/luakit/
[magit]: https://github.com/magit/magit.git
[makey]: https://github.com/mickeynp/makey.git
[markdown-mode]: http://www.emacswiki.org/emacs/MarkdownMode
[multi-term]: http://www.emacswiki.org/emacs/MultiTerm
[paredit]: http://mumble.net/~campbell/emacs/paredit.el
[pkg-info]: https://github.com/lunaryorn/pkg-info.el.git
[projectile]: https://github.com/bbatsov/projectile.git
[quicklisp]: http://www.quicklisp.org/
[rich-minority]: https://github.com/Bruce-Connor/rich-minority.git
[s]: https://github.com/magnars/s.el.git
[sbcl]: http://www.sbcl.org/
[slime]: http://common-lisp.net/project/slime/
[smart-mode-line]: https://github.com/Bruce-Connor/smart-mode-line.git
[solarized]: https://github.com/sellout/emacs-color-theme-solarized
[twittering-mode]: https://github.com/hayamiz/twittering-mode/
[undo-tree]: http://www.dr-qubit.org/undo-tree/undo-tree-0.6.4.el
[wanderlust]: https://github.com/wanderlust/wanderlust
[zenburn]: https://github.com/bbatsov/zenburn-emacs.git

