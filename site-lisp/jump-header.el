;; jump between source and header file
(defun c-base-mode-in-header-file ()
  (let* ((filename (buffer-file-name))
         (extension (car (last (split-string filename "\\.")))))
    (string= "h" extension)))

(defun c-base-mode-file-jump-to-extension (extension)
  (let* ((filename (buffer-file-name))
         (file-components (append (butlast (split-string filename
                                                         "\\."))
                                  (list extension)))
         (filepath (mapconcat 'identity file-components ".")))
    (if (file-readable-p filepath)
        (find-file filepath)
      nil)))


;;; Assumes that Header and Source file are in same directory
(defun c-base-mode-jump-between-header-source ()
  (interactive)
  (if (c-base-mode-in-header-file)
      (or
       (c-base-mode-file-jump-to-extension "m")
       (c-base-mode-file-jump-to-extension "mm")
       (c-base-mode-file-jump-to-extension "c")
       (c-base-mode-file-jump-to-extension "cc")
       (c-base-mode-file-jump-to-extension "cpp"))
    (c-base-mode-file-jump-to-extension "h")))


(add-hook
 'c-mode-common-hook
 (lambda ()
   (define-key c-mode-base-map (kbd "M-o")
 'c-base-mode-jump-between-header-source)
))

(provide 'jump-header)
