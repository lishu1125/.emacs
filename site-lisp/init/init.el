(require 'mycustom)
(require 'init-cscope)
(require 'init-highlight-current-line)
(require 'init-highlight-parentheses)
(require 'init-ibuffer)
(require 'init-sr-speedbar)
(require 'init-window)
(require 'init-theme)
(require 'init-auto-complete)
(require 'init-CC-mode)
(require 'init-highlight-symbol)
(require 'init-ido)
(require 'init-org-mode)
(require 'init-w3m)
(require 'init-helm)
(require 'init-projectile)
(require 'init-smex)
(require 'init-imenu-anywhere)
(require 'init-git-emacs)
(require 'init-powerline)
(require 'init-python-mode)
(require 'init-hs-minor-mode)
(require 'init-ace-jump-mode)

;;unicad配置
(require 'unicad)

;;注释配置
(defun qiang-comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.
If no region is selected and current line is not blank and
we are not at the end of the line, then comment current line.
Replaces default behaviour of comment-dwim,
when it inserts comment at the end of the line. "
  (interactive "*P")
  (comment-normalize-vars)

  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))
(global-set-key "\M-;" 'qiang-comment-dwim-line)

(require 'jump-header)

(require 'golden-ratio)
(golden-ratio-mode 1)

;;(require 'ag)
;;(setq ag-executable "~/.emacs.d/ag.exe")
;;(setq ag-highlight-search t)
;;(setq ag-reuse-buffers t)
;;(setq explicit-shell-file-name "C:/cygwin/bin/bash.exe")
;;(setq shell-file-name explicit-shell-file-name)
;;(add-to-list 'exec-path "C:/cygwin/bin")

(provide 'init)
