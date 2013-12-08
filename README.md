Emacs dotfiles.
===============

__Plugins:__

*	[color-theme][color-theme]
*	[linum-relative][linum-relative]
*	[paredit][paredit]
*	[solarized][solarized]


Dependencies.
=============

*	[Anonymous Pro fonts][anonymous-pro]
*	[Steel Bank Common Lisp][sbcl]
*	[quicklisp][quicklisp]
*	[SLIME][slime]


Installation.
=============

	git clone git://github.com/rremizov/dotemacs.git ~/.emacs.d
	cd ~/.emacs.d
	git submodule init && git submodule update


How to setup and configure Lisp environment
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


[anonymous-pro]: http://www.marksimonson.com/fonts/view/anonymous-pro
[color-theme]: http://www.nongnu.org/color-theme/
[linum-relative]: https://github.com/coldnew/linum-relative
[paredit]: http://mumble.net/~campbell/emacs/paredit.el
[quicklisp]: http://www.quicklisp.org/
[sbcl]: http://www.sbcl.org/
[slime]: http://common-lisp.net/project/slime/
[solarized]: https://github.com/sellout/emacs-color-theme-solarized

