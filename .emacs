(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'mycustom)

;;括号匹配配置
(require 'highlight-parentheses)
(highlight-parentheses-mode 1)

;;高亮显示当前行
(require 'highlight-current-line)
(highlight-current-line-on t)
;;(set-face-background 'highlight-current-line-face "#666666")
(set-face-background 'highlight-current-line-face "#7A378B")

;;Cscope配置
;; C-c s a 设定初始化的目录，一般是你代码的根目录
;; C-s s I 对目录中的相关文件建立列表并进行索引
;; C-c s s 序找符号
;; C-c s g 寻找全局的定义
;; C-c s c 看看指定函数被哪些函数所调用
;; C-c s C 看看指定函数调用了哪些函数
;; C-c s e 寻找正则表达式
;; C-c s f 寻找文件
;; C-c s i 看看指定的文件被哪些文件include
(require 'xcscope)
;;打开cscope时不更新，提高索引速度 
(setq cscope-do-not-update-database t)

;;ibuffer配置
;;(require 'ibuffer)
;;(global-set-key (kbd "C-x C-b") 'ibuffer)

;;sr-speedbar配置
;;(require 'sr-speedbar)  
;;(setq speedbar-show-unknown-files t)  
;;(setq speedbar-use-images nil)  
;;(setq sr-speedbar-width 30)  
;;(setq sr-speedbar-right-side nil)  
;;(global-set-key (kbd "<f5>") (lambda()  
;;                               (interactive)  
;;                               (sr-speedbar-toggle))) 

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

;;theme配置
(require 'zenburn-theme)
(load-theme 'zenburn t)

;;highlight-symbol配置
(require 'highlight-symbol)
(global-set-key [(shift f8)] 'highlight-symbol-at-point)

;;org-mode配置
(setq org-todo-keywords
      '((sequence "TODO" "DOING" "|" "DONE" "CANCEL")))
(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(i!)" "|" "DONE(d!)" "CANCEL(c!)")))
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;;CC-Mode配置
(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)

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

;;w3m配置
;;指定w3m可执行程序，所在的执行路径
;;(add-to-list 'exec-path "~/.emacs.d/w3m")
;;(add-to-list 'load-path "~/.emacs.d/w3m-lisp")
;;(require 'w3m-load)
;;(setq w3m-use-favicon nil)
;;(setq w3m-command-arguments '("-cookie" "-F"))
;;(setq w3m-use-cookies t)
;;(setq w3m-default-display-inline-images t)
;;(setq w3m-default-toggle-inline-images t)
;;(setq w3m-show-graphic-icons-in-header-line t)                  
;;(setq w3m-show-graphic-icons-in-mode-line t)
;;(setq w3m-home-page "http://www.baidu.com/")

;;ido的配置,这个可以使你在用C-x C-f打开文件的时候在后面有提示;
;;这里是直接打开了ido的支持，在emacs23中这个是自带的.
(ido-mode t)
;;ido模式中不保存目录列表,解决退出Emacs时ido要询问编码的问题。
(setq ido-save-directory-list-file nil)

;;projectile配置
;;(add-to-list 'load-path "~/.emacs.d/projectile")
;;(require 'projectile)
;; 默认全局使用
;;(projectile-global-mode)
;; 默认打开缓存
;;(setq projectile-enable-caching t)

;;helm配置
;;(add-to-list 'load-path "~/.emacs.d/helm")
;;(require 'helm-config)
;;(global-set-key (kbd "M-x") 'helm-M-x)
;;(global-set-key (kbd "C-x b") 'helm-mini)
;;(global-set-key (kbd "C-x C-f") 'helm-find-files)
;;(global-set-key (kbd "C-c h e") 'helm-etags-select)
;;(global-set-key (kbd "C-c h g") 'helm-do-grep)
;;(global-set-key (kbd "C-c h s") 'helm-semantic-or-imenu)
;;(global-set-key (kbd "C-c h m") 'helm-all-mark-rings)
;;(global-set-key (kbd "C-c h f") 'helm-find)
;;(global-set-key (kbd "C-c h l") 'helm-locate)
;;(global-set-key (kbd "C-c h o") 'helm-occur)
;;(global-set-key (kbd "C-c h r") 'helm-resume)
;;(global-set-key (kbd "C-c h y") 'helm-show-kill-ring)
;;(global-set-key (kbd "C-c h i") 'helm-register
;;(helm-mode 1)

;;smex配置
(add-to-list 'load-path "~/.emacs.d/smex")
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;imenu-anywhere配置
(require 'imenu-anywhere)
(global-set-key (kbd "C-.") 'imenu-anywhere)

;;git-emacs配置
(setq explicit-shell-file-name
      "C:/Program Files/Git/bin/bash.exe")
(setq shell-file-name explicit-shell-file-name)
(add-to-list 'exec-path "C:/Program Files/Git/bin")
(add-to-list 'load-path "~/.emacs.d/git-emacs/")
(require 'git-emacs)

;;powerline配置
(require 'powerline)
(require 'cl)
;;(setq powerline-arrow-shape 'arrow)   ;; the default
;;(setq powerline-arrow-shape 'curve)   ;; give your mode-line curves
;;(setq powerline-arrow-shape 'arrow14) ;; best for small fonts
(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "OliveDrab3" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

;;python-mode配置
(add-to-list 'load-path "~/.emacs.d/python-mode.el-6.1.3")
(require 'python-mode)

;;unicad配置
(require 'unicad)

;;hs-minor-mode配置
;;hs-hide-all
;;hs-show-all
(setq hs-allow-nesting t)
(add-hook 'c-mode-common-hook
          (lambda ()
            (hs-minor-mode 1)
            ))
(add-hook 'emacs-lisp-mode-hook
          (lambda()
            (hs-minor-mode 1)))
(add-hook 'tcl-mode-hook (lambda ()
                           (hs-minor-mode 1)
                           ))
(add-to-list 'hs-special-modes-alist
             '(c-mode "[\n\t ]*{" "}" "/[*/]" nil hs-c-like-adjust-block-beginning))
(add-to-list 'hs-special-modes-alist
             '(c++-mode "[\n\t ]*{" "}" "/[*/]" nil hs-c-like-adjust-block-beginning))						   
(define-key global-map (kbd "M-,") 'hs-toggle-hiding)

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
