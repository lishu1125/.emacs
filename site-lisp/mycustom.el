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

;;在标题栏显示buffer的名字
(setq frame-title-format "emacs@%b")

;;在窗口的标题栏上显示文件名称
(setq frame-title-format "%n%F/%b")

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

;;括号自动补全
(require 'electric)
(electric-pair-mode t)

;;不让光标闪烁
(blink-cursor-mode 0)

;;个人信息
(setq user-full-name "lishu")
(setq user-mail-address "lishu1125@126.com")

(provide 'mycustom)
