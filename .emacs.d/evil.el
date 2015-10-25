; Give us back Ctrl+U for vim emulation
(setq evil-want-C-u-scroll t)

; Save buffers with Ctrl+S
(global-set-key (kbd "C-s") 'evil-write)

; Use evil mode
(require 'evil)
(evil-mode t)
