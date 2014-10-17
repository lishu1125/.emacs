;;auto-complete配置
(add-to-list 'load-path "~/.emacs.d/pos-tip")
(add-to-list 'load-path "~/.emacs.d/fuzzy-el")
(add-to-list 'load-path "~/.emacs.d/popup-el")
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")
(ac-config-default)
(require 'pos-tip)
(setq ac-quick-help-prefer-pos-tip t)
(setq ac-dwim t)
(setq ac-trigger-commands
      (cons 'backward-delete-char-untabify ac-trigger-commands))
;;(setq ac-fuzzy-enable t)
;;设置背景颜色
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue")

(provide 'init-auto-complete)