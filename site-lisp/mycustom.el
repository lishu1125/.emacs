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

;;�ڱ�������ʾbuffer������
(setq frame-title-format "emacs@%b")

;;�ڴ��ڵı���������ʾ�ļ�����
(setq frame-title-format "%n%F/%b")

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

;;������Ϣ
(setq user-full-name "lishu")
(setq user-mail-address "lishu1125@126.com")

(provide 'mycustom)
