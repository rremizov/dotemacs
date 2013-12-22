;; Stops selection with a mouse being immediately injected to the kill ring.
(setq mouse-drag-copy-region nil)
;; Stops killing/yanking interacting with primary X11 selection.
(setq x-select-enable-primary nil)
;; Makes killing/yanking interact with clipboard X11 selection.
(setq x-select-enable-clipboard t)

