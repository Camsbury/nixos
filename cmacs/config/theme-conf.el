(load-theme 'doom-molokai t)
(if (string-equal system-type "gnu/linux")
    (if (> (x-display-pixel-width) 1600)
        (set-default-font "Roboto Mono 6")
      (set-default-font "Roboto Mono 8")))
(if (string-equal system-type "darwin")
    (set-default-font "DejaVu Sans Mono 8"))

(provide 'theme-conf)
