(use-package yasnippet
  :config
  (setq yas-snippet-dirs
        (append yas-snippet-dirs `(,(concat (getenv "CONFIG_PATH") "/snippets/"))))
  (yas-global-mode 1)
  (setq yas-triggers-in-field t))


(provide 'snippet-conf)
