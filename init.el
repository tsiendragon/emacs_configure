;; init.el
;; 把目录lisp/添加到搜索路径中去
(add-to-list
    'load-path 
    (expand-file-name "lisp" user-emacs-directory))
;; 下面每一个被require的feature都对应一个lisp/目录下的同名
;; elisp文件，例如init-utils.el、init-elpa.el
(require 'init-utils)   ;; 为加载初始化文件提供一些自定义的函数和宏
(require 'init-elpa)    ;; 加载ELPA，并定义了require-package函数
(require 'init-themes)
;;(require 'init-fonts)   ;; 以Server-Client模式启动时需额外设置字体
;;(require 'init-editing-utils)  ;; 一些顺手的小工具
;;(require 'init-markdown)
;;(require 'init-auctex)
(provide 'init)
