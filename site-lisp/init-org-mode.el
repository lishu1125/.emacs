;;org-mode≈‰÷√
(setq org-todo-keywords
      '((sequence "TODO" "DOING" "|" "DONE" "CANCEL")))
(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(i!)" "|" "DONE(d!)" "CANCEL(c!)")))
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(provide 'init-org-mode)