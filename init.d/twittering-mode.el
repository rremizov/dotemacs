(require 'twittering-mode)
(setq twittering-display-remaining t)
(setq twittering-icon-mode t)
(setq twittering-timer-interval 300)
(setq twittering-use-master-password t)

(add-hook 'twittering-new-tweets-hook
          (lambda ()
            (let ((n twittering-new-tweets-count))
              (start-process "twittering-notify" nil "notify-send"
                             "-i" (expand-file-name "~/.emacs.d/img/twitter.png")
                             "New tweets"
                             (format "You have %d new tweet%s"
                                     n (if (> n 1) "s" ""))))))

