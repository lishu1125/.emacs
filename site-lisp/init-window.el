;;窗口管理	
;;window-numbering配置
(require 'window-numbering)
(window-numbering-mode 1)
;;windresize配置
(require 'windresize)
;;undo/redo之前的窗口操作
(winner-mode 1)
(global-set-key (kbd "C-x 4 u") 'winner-undo)
(global-set-key (kbd "C-x 4 r") 'winner-redo)

(provide 'init-window)