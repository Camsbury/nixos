(require 'bindings-conf)
(require 'paredit)
(require 'lispyville)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Hooks

(general-add-hook 'lisp-interaction-mode-hook
                  (list 'paredit-mode
                        'lispyville-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Functions

; straight outta smartparens
(defun sp-forward-whitespace (&optional arg)
  "Skip forward past the whitespace characters.
With non-nil ARG return number of characters skipped."
  (interactive "^P")
  (let ((rel-move (skip-chars-forward " \t\n")))
    (if arg rel-move (point))))

(defun lisp-tree-forward ()
  "Move forward in the lisp tree"
  (interactive)
  (paredit-forward)
  (when (or (= 32 (following-char)) (= 10 (following-char)))
    (sp-forward-whitespace)))

(defun lisp-tree-last ()
  "Move to the last element of the list"
  (interactive)
  (paredit-backward-up)
  (paredit-forward)
  (paredit-backward-down))

(defun lisp-open-above ()
  "Open above the current list"
  (interactive)
  (if (= 40 (following-char))
      (progn
        (call-interactively #'paredit-forward-down)
        (call-interactively #'lispyville-open-above-list))
    (call-interactively #'lispyville-open-above-list)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Bindings

(general-evil-define-key 'normal 'paredit-mode-map
  "j"   #'lisp-tree-forward
  "l"   #'paredit-forward-down
  "k"   #'paredit-backward
  "h"   #'paredit-backward-up
  "I"   #'lispyville-insert-at-beginning-of-list
  "A"   #'lispyville-insert-at-end-of-list

  "o"   #'lispyville-open-below-list
  "O"   #'lisp-open-above)

(general-define-key :keymaps 'paredit-mode-map
  "C-h"     #'evil-window-left
  "C-j"     #'evil-window-down
  "C-k"     #'evil-window-up
  "C-l"     #'evil-window-right

  "M-j"     #'evil-next-visual-line
  "M-l"     #'evil-forward-char
  "M-k"     #'evil-previous-visual-line
  "M-h"     #'evil-backward-char

  "M-o"     #'evil-open-below
  "M-O"     #'evil-open-above

  "M-L"     #'lisp-tree-last
  "M-H"     #'lispy-raise-sexp

  "M-s"     #'lispy-forward-slurp-sexp
  "M-t"     #'lispy-forward-barf-sexp
  "M-a"     #'lispy-backward-barf-sexp
  "M-r"     #'lispy-backward-slurp-sexp

  "M-f"     #'lispyville-drag-backward
  "M-p"     #'lispyville-drag-forward
  "M-<RET>" #'eval-defun)



(provide 'lisp-conf)
