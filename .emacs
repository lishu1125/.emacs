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

(require 'init)

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
      "C:/Program Files (x86)/Git/bin/bash.exe")
(setq shell-file-name explicit-shell-file-name)
(add-to-list 'exec-path "C:/Program Files (x86)/Git/bin")
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

(require 'jump-header)

(require 'golden-ratio)
(golden-ratio-mode 1)