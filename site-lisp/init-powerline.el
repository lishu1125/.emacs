;;powerline配置
(require 'powerline)
(require 'cl)
;;(setq powerline-arrow-shape 'arrow)   ;; the default
;;(setq powerline-arrow-shape 'curve)   ;; give your mode-line curves
;;(setq powerline-arrow-shape 'arrow14) ;; best for small fonts
(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "OliveDrab3" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
 
(provide 'init-powerline)
