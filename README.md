How to setup and configure Lisp environment
===========================================
_using Emacs + SLIME and Steel Bank CL._

Install and configure Emacs
---------------------------

	sudo aptitude install emacs
	git clone git://github.com/ceaseandrepent/dotemacs.git ~/dotemacs
	cd ~/dotemacs && ./create-links.sh


Install Lisp implementation and library manager
-----------------------------------------------

	sudo aptitude install sbcl cl-quicklisp


Go into Lisp shell, install and configure `quicklisp`
-----------------------------------------------------

	sbcl --load /usr/share/cl-quicklisp/quicklisp.lisp
	(quicklisp-quickstart:install)
	(ql:add-to-init-file)

Go into Lisp shell, load `SLIME`
--------------------------------

	sbcl
	(ql:quickload "quicklisp-slime-helper")

