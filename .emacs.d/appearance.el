(unless (package-installed-p 'solarized-theme)
      (package-install 'solarized-theme))

; Use solarized dark (in GUI)
(load-theme 'solarized-dark t)
