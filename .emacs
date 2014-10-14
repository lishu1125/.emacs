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

;;����ƥ������
(require 'highlight-parentheses)
(highlight-parentheses-mode 1)

;;������ʾ��ǰ��
(require 'highlight-current-line)
(highlight-current-line-on t)
;;(set-face-background 'highlight-current-line-face "#666666")
(set-face-background 'highlight-current-line-face "#7A378B")

;;Cscope����
;; C-c s a �趨��ʼ����Ŀ¼��һ���������ĸ�Ŀ¼
;; C-s s I ��Ŀ¼�е�����ļ������б���������
;; C-c s s ���ҷ���
;; C-c s g Ѱ��ȫ�ֵĶ���
;; C-c s c ����ָ����������Щ����������
;; C-c s C ����ָ��������������Щ����
;; C-c s e Ѱ��������ʽ
;; C-c s f Ѱ���ļ�
;; C-c s i ����ָ�����ļ�����Щ�ļ�include
(require 'xcscope)
;;��cscopeʱ�����£���������ٶ� 
(setq cscope-do-not-update-database t)

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
;;window-numbering����
(require 'window-numbering)
(window-numbering-mode 1)
;;windresize����
(require 'windresize)
;;undo/redo֮ǰ�Ĵ��ڲ���
(winner-mode 1)
(global-set-key (kbd "C-x 4 u") 'winner-undo)
(global-set-key (kbd "C-x 4 r") 'winner-redo)

;;theme����
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
