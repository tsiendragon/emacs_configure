;; 需要指定加载的路径
;;(add-to-list 'load-path "~/.emacs.d/themes/")
;;(require 'color-theme)
;;(color-theme-initialize)  
;; 这个是你选择的主题，后面的 subtle-hacker 就是它的名字，注意使用 小写 。
;;(color-theme-subtle-hacker)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/atom-one-dark-theme")
(load-theme 'atom-one-dark t)
(provide 'init-themes)
