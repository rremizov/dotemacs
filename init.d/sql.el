;;; package --- Summary:


;;; Commentary:

;; https://truongtx.me/2014/08/23/setup-emacs-as-an-sql-database-client/

;;; Code:

;; (setq sql-postgres-login-params
;;       '((user :default "postgres")
;;         (database :default "postgres")
;;         (server :default "localhost")
;;         (port :default 5432)))

;; (setq sql-connection-alist
;;       '((server1 (sql-product 'postgres)
;;                   (sql-port 5432)
;;                   (sql-server "localhost")
;;                   (sql-user "user")
;;                   (sql-password "password")
;;                   (sql-database "db1"))
;;         (server2 (sql-product 'postgres)
;;                   (sql-port 5432)
;;                   (sql-server "localhost")
;;                   (sql-user "user")
;;                   (sql-password "password")
;;                   (sql-database "db2"))))

(add-hook 'sql-interactive-mode-hook
          (lambda () (toggle-truncate-lines t)))

;;; sql.el ends here

