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

;;���win8��������
(set-fontset-font "fontset-default" 
'gb18030 '("Microsoft YaHei" . "unicode-bmp"))

;;�رշ��˵ĳ���ʱ����ʾ��
(setq visible-bell t)

;;û����ʾ����Ҳ������
(setq ring-bell-function 'ignore)

;;�ر���ʱ���Ǹ����������桱
(setq inhibit-startup-message t)

;;��ʾ�к�
(setq column-number-mode t)

;;���� TAB �ַ���indent, �������ܶ���ֵĴ��󡣱༭ Makefile ��ʱ��Ҳ���õ��ģ���Ϊ makefile-mode ��� TAB �����ó������� TAB �ַ������Ҽ�����ʾ��
;;(setq-default indent-tabs-mode nil)
;;(setq default-tab-width 8)
;;(setq tab-stop-list ())
;;(loop for x downfrom 40 to 1 do
;;      (setq tab-stop-list (cons (* x 4) tab-stop-list)))

;;���� sentence-end ����ʶ�����ı�㡣������ fill ʱ�ھ�ź�� �������ո�
(setq sentence-end "\\([������]\\|����\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;;���Եݹ��ʹ�� minibuffe
(setq enable-recursive-minibuffers t)

;;��ֹҳ�����ʱ������ scroll-margin 3 �����ڿ�����Ļ����3��ʱ�Ϳ�ʼ���������ԺܺõĿ���������
(setq scroll-margin 3
      scroll-conservatively 10000)

;;��ȱʡ�� major mode ����Ϊ text-mode, �����Ǽ���ʲô����Ҳ û�е� fundamental-mode
(setq default-major-mode 'text-mode)

;;����ƥ��ʱ��ʾ����һ�ߵ����ţ������Ƿ��˵�������һ������
;;(show-paren-mode t)
;;(setq show-paren-style 'parentheses)
(require 'highlight-parentheses)
(highlight-parentheses-mode 1)

;;��꿿�����ָ��ʱ�������ָ���Զ��ÿ�����ס����
(mouse-avoidance-mode 'animate)

;;�ڱ�������ʾbuffer������
(setq frame-title-format "emacs@%b")

;;�ڴ��ڵı���������ʾ�ļ�����
(setq frame-title-format "%n%F/%b")

;;�� Emacs ����ֱ�Ӵ򿪺���ʾͼƬ
(auto-image-file-mode t)

;;�����﷨����
(global-font-lock-mode t)

;;����Щȱʡ���õĹ��ܴ�
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)

;;һ���򵥵İ취���� auto-mode-alist, ���д�ܶ� add-to-list
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

;;�� dired ���Եݹ�Ŀ�����ɾ��Ŀ¼
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;;�������ͻ�������
(server-start)

;;�� fill-column ��Ϊ 60. ���������ָ��ö�
(setq-default auto-fill-function 'do-auto-fill)
(setq default-fill-column 120)

;;����emacs���ⲿ���������ճ��
(setq x-select-enable-clipboard t)

;;����M-gΪgoto-line
(global-set-key (kbd "M-g") 'goto-line)

;;�ı� Emacs ��ִ��Ҫ��ش� yes ����Ϊ���� y ��ո����ʾ yes��n ��ʾ no
(fset 'yes-or-no-p 'y-or-n-p)

;;������ C-k ʱ��ͬʱɾ������
(setq-default kill-whole-line t)

;;���������β�����ƶ���ʱ��ʼ�ձ�������β
(setq track-eol t)

;;���� �ҾͲ��ð� C-@ �� setmark ��, C-@ �ܲ��ð�
(global-set-key (kbd "M-<SPC>") 'set-mark-command)

;; tab and space���� 
;; when true, emacs use mixture of tab and space to achieve offset 
(setq-default indent-tabs-mode nil) 
;; control length used to offset. 
(setq-default c-basic-offset 4) 
;; control how emacs explain TAB. 
(setq-default tab-width 4) 

;;����һ�±���ʱ�İ汾���ƣ��������Ӱ�ȫ
(setq version-control t)
(setq kept-new-versions 3)
(setq delete-old-versions t)
(setq kept-old-versions 2)
(setq dired-kept-versions 1)
;;�Զ����ݵ����ã�
(setq
    backup-by-copying t ; �Զ�����
    backup-directory-alist
    '(("." . "~/.backups")) ; �Զ�������Ŀ¼"~/.saves"��
    delete-old-versions t ; �Զ�ɾ���ɵı����ļ�
    kept-new-versions 6 ; ���������6�������ļ�
    kept-old-versions 2 ; ���������2�������ļ�
    version-control t) ; ��α���

;;�����Զ���ȫ
(require 'electric)
(electric-pair-mode t)

;;���ù����˸
(blink-cursor-mode 0)

;;������ʾ��ǰ��
(require 'highlight-current-line)
(highlight-current-line-on t)
;;(global-hl-line-mode 1)
(set-face-background 'highlight-current-line-face "#666666")

;;Cscope����
(require 'xcscope)
;;��cscopeʱ�����£���������ٶ� 
(setq cscope-do-not-update-database t)
;; C-c s a             �趨��ʼ����Ŀ¼��һ���������ĸ�Ŀ¼
;; C-s s I             ��Ŀ¼�е�����ļ������б���������
;; C-c s s             ���ҷ���
;; C-c s g             Ѱ��ȫ�ֵĶ���
;; C-c s c             ����ָ����������Щ����������
;; C-c s C             ����ָ��������������Щ����
;; C-c s e             Ѱ��������ʽ
;; C-c s f             Ѱ���ļ�
;; C-c s i             ����ָ�����ļ�����Щ�ļ�include

;;ibuffer����
;;(require 'ibuffer)
;;(global-set-key (kbd "C-x C-b") 'ibuffer)

;;sr-speedbar����
;;(require 'sr-speedbar)  
;;(setq speedbar-show-unknown-files t)  
;;(setq speedbar-use-images nil)  
;;(setq sr-speedbar-width 30)  
;;(setq sr-speedbar-right-side nil)  
;;(global-set-key (kbd "<f5>") (lambda()  
;;                               (interactive)  
;;                               (sr-speedbar-toggle))) 

;;���ڹ���	
;;windmove����
;;(windmove-default-keybindings)
;;(windmove-default-keybindings 'meta)

;;window-numbering����
(require 'window-numbering)
(window-numbering-mode 1)

;;windresize����
(require 'windresize)

;;undo/redo֮ǰ�Ĵ��ڲ���
(winner-mode 1)
(global-set-key (kbd "C-x 4 u") 'winner-undo)
(global-set-key (kbd "C-x 4 r") 'winner-redo)

;;color-theme����
;;(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
;;(require 'color-theme)
;;(color-theme-initialize)
;;(color-theme-gnome)
(require 'zenburn-theme)
(load-theme 'zenburn t)

;;highlight-symbol����
(require 'highlight-symbol)
(global-set-key [(shift f8)] 'highlight-symbol-at-point)

;;org-mode����
(setq org-todo-keywords
      '((sequence "TODO" "DOING" "|" "DONE" "CANCEL")))
(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(i!)" "|" "DONE(d!)" "CANCEL(c!)")))
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;;CC-Mode����
(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)

;;auto-complete����
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
;;���ñ�����ɫ
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue") 

;;w3m����
;;ָ��w3m��ִ�г������ڵ�ִ��·��
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

;; ����shift��ק��꼴��ѡ���������
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

;;ido������,�������ʹ������C-x C-f���ļ���ʱ���ں�������ʾ;
;;������ֱ�Ӵ���ido��֧�֣���emacs23��������Դ���.
(ido-mode t)
;;idoģʽ�в�����Ŀ¼�б�,����˳�EmacsʱidoҪѯ�ʱ�������⡣
(setq ido-save-directory-list-file nil)

;;projectile����
;;(add-to-list 'load-path "~/.emacs.d/projectile")
;;(require 'projectile)
;; Ĭ��ȫ��ʹ��
;;(projectile-global-mode)
;; Ĭ�ϴ򿪻���
;;(setq projectile-enable-caching t)

;;helm����
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

;;smex����
(add-to-list 'load-path "~/.emacs.d/smex")
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;imenu-anywhere����
(require 'imenu-anywhere)
(global-set-key (kbd "C-.") 'imenu-anywhere)

;;git-emacs����
(setq explicit-shell-file-name
      "C:/Program Files/Git/bin/bash.exe")
(setq shell-file-name explicit-shell-file-name)
(add-to-list 'exec-path "C:/Program Files/Git/bin")
(add-to-list 'load-path "~/.emacs.d/git-emacs/")
(require 'git-emacs)

;;powerline����
(require 'powerline)
(require 'cl)
;;(setq powerline-arrow-shape 'arrow)   ;; the default
;;(setq powerline-arrow-shape 'curve)   ;; give your mode-line curves
;;(setq powerline-arrow-shape 'arrow14) ;; best for small fonts
(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "OliveDrab3" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

;;python-mode����
(add-to-list 'load-path "~/.emacs.d/python-mode.el-6.1.3")
(require 'python-mode)

;;unicad����
(require 'unicad)

;;hs-minor-mode����
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
;;hs-hide-all
;;hs-show-all

;;ע������
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
	
;;������Ϣ
(setq user-full-name "lishu")
(setq user-mail-address "lishu1125@126.com")
