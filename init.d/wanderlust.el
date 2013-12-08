;; This file contain only init settings.
;; Email account parameters should be provided elsewhere.

;; Autoload Wanderlust.
(autoload 'wl "wl" "Wanderlust" t)
;; Enable cyrillic IMAP folder names.
(setq elmo-imap4-use-modified-utf7 t)

;; Make the interface similar to Thunderbird's.
(setq
  wl-stay-folder-window t
  wl-folder-window-width 40

  ;; Hide some fields.
  wl-message-ignored-field-list '("^.*:")
  wl-message-visible-field-list
  '("^\\(To\\|Cc\\):"
    "^Subject:"
    "^\\(From\\|Reply-To\\):"
    "^Organization:"
    "^Message-Id:"
    "^\\(Posted\\|Date\\):")

  ;; Sorting rules.
  wl-message-sort-field-list
  '("^From"
    "^Organization:"
    "^X-Attribution:"
    "^Subject"
    "^Date"
    "^To"
    "^Cc"))

