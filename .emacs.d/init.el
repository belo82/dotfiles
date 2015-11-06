;; to have Home brew installed packages added to my load-path
(let ((default-directory "/usr/local/share/emacs/site-lisp/"))
    (normal-top-level-add-subdirs-to-load-path))

; Use the package manager
(require 'package)

; Sets package management sources
 (add-to-list 'package-archives
              '("melpa" . "http://melpa.org/packages/") t)

(when (< emacs-major-version 24)
      ;; For important compatibility libraries like cl-lib
      (add-to-list 'package-archives 
                   '("gnu" . "http://elpa.gnu.org/packages/")))

; Initialize the package manager
(package-initialize)

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
	 user-emacs-directory)
	((boundp 'user-init-directory)
	 user-init-directory)
	(t "~/.emacs.d/")))


(unless (package-installed-p 'cider)
    (package-install 'cider))

(unless (package-installed-p 'clojure-mode)
    (package-install 'clojure-mode))


(unless (package-installed-p 'rainbow-delimiters)
  (package-install 'rainbow-delimiters))
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

(unless (package-installed-p 'paredit)
  (package-install 'paredit))
(add-hook 'clojure-mode-hook #'paredit-mode)


(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

; Load configuration modules
(load-user-file "evil.el")

; Load appearance config
(load-user-file "appearance.el")

; use powerline
(require 'powerline)
(powerline-center-evil-theme)

; do not create backup files
(setq make-backup-files nil)
