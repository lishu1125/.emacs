;;git-emacs配置
(setq explicit-shell-file-name
      "C:/Program Files/Git/bin/bash.exe")
(setq shell-file-name explicit-shell-file-name)
(add-to-list 'exec-path "C:/Program Files/Git/bin")
(add-to-list 'load-path "~/.emacs.d/git-emacs/")
(require 'git-emacs)

(provide 'init-git-emacs)
