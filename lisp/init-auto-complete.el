;; init-auto-complete.el
...
(require 'auto-complete-config)
(global-auto-complete-mode t)
;; 把自定义的dict加到auto-complete的字典中去
(add-to-list 'ac-dictionary-directories
             (expand-file-name "lisp/custom-dicts" user-emacs-directory))
;; 按下TAB时首先缩进所在行，然后尝试补全
(setq tab-always-indent 'complete)
;; 阻止自动触发补全动作
(setq-default ac-expand-on-auto-complete nil)
(setq-default ac-auto-start nil)
;; 用TAB作为手动触发补全动作的快捷键
(ac-set-trigger-key "TAB")
;; 使用after-load来确保ac-source-yasnippet已经完成加载
(after-load 'init-yasnippet
  (set-default 'ac-sources
             '(ac-source-dictionary
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers
               ac-source-words-in-all-buffer
               ac-source-functions
               ac-source-yasnippet)))
(require 'init-ac-source)
(provide 'init-auto-complete)
