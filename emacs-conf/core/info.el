(use-package command-log-mode
  :config
  (defun toggle-command-logging ()
    "Toggle command logging"
    (interactive)
    (if (bound-and-true-p command-log-mode)
        (call-interactively #'global-command-log-mode)
      (progn
        (call-interactively #'command-log-mode)
        (call-interactively #'global-command-log-mode)
        (clm/toggle-command-log-buffer)))))

(use-package helm-dash
  :config
  (setq helm-dash-common-docsets
        '("C"
          "Emacs Lisp"
          "Haskell"
          "HTML"
          "JavaScript"
          "Python 3"
          "React"
          "Rust")))

(use-package helpful)

(use-package package
  :config
  (-map (lambda (x) (add-to-list 'package-archives x t))
        '(("s-melpa" . "http://stable.melpa.org/packages/")
          ("melpa" . "http://melpa.milkbox.net/packages/"))))

(general-def Info-mode-map
  [remap Info-history] 'ignore)

(general-def 'Info-mode-map
  [remap Info-scroll-up] #'hydra-leader/body
  [remap Info-history]   #'evil-window-bottom)

(provide 'core/info)
