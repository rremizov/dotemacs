How to setup and configure Lisp environment
===========================================
_using Emacs + SLIME and Steel Bank CL._

__Install and configure Emacs__

	sudo aptitude install emacs
	git clone git://github.com/rremizov/dotemacs.git ~/dotemacs
	cd ~/dotemacs && ./create-links.sh


__Install Lisp implementation and library manager__

	sudo aptitude install sbcl cl-quicklisp


__Go into Lisp shell, install and configure `quicklisp`__

	sbcl --load /usr/share/cl-quicklisp/quicklisp.lisp
	(quicklisp-quickstart:install)
	(ql:add-to-init-file)

__Go into Lisp shell, load `SLIME`__

	sbcl
	(ql:quickload "quicklisp-slime-helper")

