(unless (package-installed-p 'evil)
  (package-install 'evil))

(unless (package-installed-p 'relative-line-numbers)
  (package-install 'relative-line-numbers))

; Display relative line numbers
(add-hook 'prog-mode-hook 'relative-line-numbers-mode t)
(add-hook 'prog-mode-hook 'line-number-mode t)
(add-hook 'prog-mode-hook 'column-number-mode t)

; Give us back Ctrl+U for vim emulation
(setq evil-want-C-u-scroll t)

; Save buffers with Ctrl+S
(global-set-key (kbd "C-s") 'evil-write)

; Use evil mode
(require 'evil)
(evil-mode t)
