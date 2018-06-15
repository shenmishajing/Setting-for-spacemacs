
;;fix the status line color bug
;;(setq ns-use-srgb-colorspace nil)

;;fix the select-mode problem
(delete-selection-mode 1)

;;(add-to-list 'company-backends 'company-c-headers)

(setq-default indent-tabs-mode nil) 	;; tab 改为插入空格
(setq c-basic-offset 4) 							;; c c++ 缩进4个空格
(setq c-default-style "linux")				;; 没有这个 { } 就会瞎搞
(setq default-tab-width 4)
