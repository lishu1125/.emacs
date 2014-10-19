﻿;;Cscope配置
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

(provide 'init-cscope)