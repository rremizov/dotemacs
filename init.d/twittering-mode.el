(add-to-list 'load-path "~/.emacs.d/twittering-mode/")
(require 'twittering-mode)
(setq twittering-display-remaining t)
(setq twittering-icon-mode t)
(setq twittering-timer-interval 300)
(setq twittering-use-master-password t)

(add-hook 'twittering-new-tweets-hook
		  (lambda ()
			(let ((n twittering-new-tweets-count))
			  (start-process "twittering-notify" nil "notify-send"
							 "-i" "/usr/share/icons/hicolor/32x32/apps/emacs23.png"
							 "New tweets"
							 (format "You have %d new tweet%s"
									 n (if (> n 1) "s" ""))))))

