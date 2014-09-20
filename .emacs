(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;解决win8中文乱码
(set-fontset-font "fontset-default" 
'gb18030 '("Microsoft YaHei" . "unicode-bmp"))

;;关闭烦人的出错时的提示声
(setq visible-bell t)

;;没有提示音，也不闪屏
(setq ring-bell-function 'ignore)

;;关闭起动时的那个“开机画面”
(setq inhibit-startup-message t)

;;显示列号
(setq column-number-mode t)

;;不用 TAB 字符来indent, 这会引起很多奇怪的错误。编辑 Makefile 的时候也不用担心，因为 makefile-mode 会把 TAB 键设置成真正的 TAB 字符，并且加亮显示的
;;(setq-default indent-tabs-mode nil)
;;(setq default-tab-width 8)
;;(setq tab-stop-list ())
;;(loop for x downfrom 40 to 1 do
;;      (setq tab-stop-list (cons (* x 4) tab-stop-list)))

;;设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插 入两个空格
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;;可以递归的使用 minibuffe
(setq enable-recursive-minibuffers t)

;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文
(setq scroll-margin 3
      scroll-conservatively 10000)

;;把缺省的 major mode 设置为 text-mode, 而不是几乎什么功能也 没有的 fundamental-mode
(setq default-major-mode 'text-mode)

;;括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线
(mouse-avoidance-mode 'animate)

;;在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用的提示
(setq frame-title-format "emacs@%b")

;;在窗口的标题栏上显示文件名称
(setq frame-title-format "%n%F/%b")

;;让 Emacs 可以直接打开和显示图片
(auto-image-file-mode)

;;进行语法加亮
(global-font-lock-mode t)

;;把这些缺省禁用的功能打开
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)

;;一个简单的办法设置 auto-mode-alist, 免得写很多 add-to-list
(mapcar
 (function (lambda (setting)
	     (setq auto-mode-alist
		   (cons setting auto-mode-alist))))
 '(("\\.xml$".  sgml-mode)
   ("\\\.bash" . sh-mode)
   ("\\.rdf$".  sgml-mode)
   ("\\.session" . emacs-lisp-mode)
   ("\\.l$" . c-mode)
   ("\\.css$" . css-mode)
   ("\\.cfm$" . html-mode)
   ("gnus" . emacs-lisp-mode)
   ("\\.idl$" . idl-mode)))

;;让 dired 可以递归的拷贝和删除目录
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;;避免多个客户端启动
(server-start)

;;把 fill-column 设为 60. 这样的文字更好读
(setq-default auto-fill-function 'do-auto-fill)
(setq default-fill-column 120)

;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)

;;设置M-g为goto-line
(global-set-key (kbd "M-g") 'goto-line)

;;改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no
(fset 'yes-or-no-p 'y-or-n-p)

;;在行首 C-k 时，同时删除该行
(setq-default kill-whole-line t)

;;当光标在行尾上下移动的时候，始终保持在行尾
(setq track-eol t)

;;这样 我就不用按 C-@ 来 setmark 了, C-@ 很不好按
(global-set-key (kbd "M-<SPC>") 'set-mark-command)

;; tab and space配置 
;; when true, emacs use mixture of tab and space to achieve offset 
(setq-default indent-tabs-mode nil) 
;; control length used to offset. 
(setq-default c-basic-offset 4) 
;; control how emacs explain TAB. 
(setq-default tab-width 4) 

;;设置一下备份时的版本控制，这样更加安全
(setq version-control t)
(setq kept-new-versions 3)
(setq delete-old-versions t)
(setq kept-old-versions 2)
(setq dired-kept-versions 1)
;;自动备份的设置：
(setq
    backup-by-copying t ; 自动备份
    backup-directory-alist
    '(("." . "~/.backups")) ; 自动备份在目录"~/.saves"下
    delete-old-versions t ; 自动删除旧的备份文件
    kept-new-versions 6 ; 保留最近的6个备份文件
    kept-old-versions 2 ; 保留最早的2个备份文件
    version-control t) ; 多次备份

;;Cscope配置
(require 'xcscope)
;;打开cscope时不更新，提高索引速度 
(setq cscope-do-not-update-database t)
;; C-c s a             设定初始化的目录，一般是你代码的根目录
;; C-s s I             对目录中的相关文件建立列表并进行索引
;; C-c s s             序找符号
;; C-c s g             寻找全局的定义
;; C-c s c             看看指定函数被哪些函数所调用
;; C-c s C             看看指定函数调用了哪些函数
;; C-c s e             寻找正则表达式
;; C-c s f             寻找文件
;; C-c s i             看看指定的文件被哪些文件include

;;ibuffer配置
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;sr-speedbar配置
(require 'sr-speedbar)  
(setq speedbar-show-unknown-files t)  
(setq speedbar-use-images nil)  
(setq sr-speedbar-width 30)  
(setq sr-speedbar-right-side nil)  
(global-set-key (kbd "<f5>") (lambda()  
                               (interactive)  
                               (sr-speedbar-toggle))) 

;;窗口管理	
;;windmove
(windmove-default-keybindings)
;;(windmove-default-keybindings 'meta)

;;window-numbering
(require 'window-numbering)
(window-numbering-mode 1)

;;windresize
(require 'windresize)

;;undo/redo之前的窗口操作
(winner-mode 1)
(global-set-key (kbd "C-x 4 u") 'winner-undo)
(global-set-key (kbd "C-x 4 r") 'winner-redo)

;;color-theme配置
;;(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
;;(require 'color-theme)
;;(color-theme-initialize)
;;(color-theme-gnome)
(require 'zenburn-theme)
(load-theme 'zenburn t)

;;highlight-symbol配置
(require 'highlight-symbol)
(global-set-key [(shift f8)] 'highlight-symbol-at-point)

;;org-mode配置
(setq org-todo-keywords
      '((sequence "TODO" "DOING" "HANGUP" "|" "DONE" "CANCEL")))
(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(i!)" "HANGUP(h!)" "|" "DONE(d!)" "CANCEL(c!)")))
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

;;w3m配置
;;指定w3m可执行程序，所在的执行路径
(add-to-list 'exec-path "~/.emacs.d/w3m")
(add-to-list 'load-path "~/.emacs.d/w3m-lisp")
(require 'w3m-load)
(setq w3m-use-favicon nil)
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-use-cookies t)
;;(setq w3m-default-display-inline-images t)
;;(setq w3m-default-toggle-inline-images t)
;;(setq w3m-show-graphic-icons-in-header-line t)                  
;;(setq w3m-show-graphic-icons-in-mode-line t)
(setq w3m-home-page "http://www.baidu.com/")

;; 按下shift拖拽鼠标即可选择矩形区域
;; Support for marking a rectangle of text with highlighting.
(add-to-list 'load-path  "~/lisp/rect-mark")
(require 'rect-mark)
(define-key ctl-x-map "r\C-@" 'rm-set-mark)
(define-key ctl-x-map [?r ?\C-\ ] 'rm-set-mark)
(define-key ctl-x-map "r\C-x" 'rm-exchange-point-and-mark)
(define-key ctl-x-map "r\C-w" 'rm-kill-region)
(define-key ctl-x-map "r\M-w" 'rm-kill-ring-save)
(define-key global-map [S-down-mouse-1] 'rm-mouse-drag-region)
(autoload 'rm-set-mark "rect-mark"
  "Set mark for rectangle." t)
(autoload 'rm-exchange-point-and-mark "rect-mark"
  "Exchange point and mark for rectangle." t)
(autoload 'rm-kill-region "rect-mark"
  "Kill a rectangular region and save it in the kill ring." t)
(autoload 'rm-kill-ring-save "rect-mark"
  "Copy a rectangular region to the kill ring." t)
(autoload 'rm-mouse-drag-region "rect-mark"
  "Drag out a rectangular region with the mouse." t)

;; Use this section in your "~/.emacs" to modify picture mode so that
;; it automatically uses the rect-mark equivalents of many commands.

;; One vision of a better picture mode.
(add-hook 'picture-mode-hook 'rm-example-picture-mode-bindings)
(autoload 'rm-example-picture-mode-bindings "rect-mark"
  "Example rect-mark key and mouse bindings for picture mode.")

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
(add-to-list 'load-path "~/.emacs.d/helm")
(require 'helm-config)
(global-set-key (kbd "C-c h") 'helm-mini)
(helm-mode 1)

;;个人信息
(setq user-full-name "lishu")
(setq user-mail-address "lishu1125@126.com")
