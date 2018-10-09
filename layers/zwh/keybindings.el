(global-set-key (kbd "C-c n") 'zwh/creat-project)
(global-set-key (kbd "C-c @ C-n") 'hs-show-all)

;; Bind clang-format-region to C-M-tab in all modes:
(global-set-key [C-M-tab] 'clang-format-region)
;; Bind clang-format-buffer to tab on the c and c++-mode only:
(add-hook 'c-mode-hook 'c-clang-format-bindings)
(add-hook 'c++-mode-hook 'clang-format-bindings)
(defun clang-format-bindings ()
  (define-key c++-mode-map [tab] 'clang-format-buffer))

(defun c-clang-format-bindings ()
  (define-key c-mode-map [tab] 'clang-format-buffer))

(global-set-key (kbd "C-c ;") 'iedit-mode)

;;delete a tab size space when press DEL
(global-set-key (kbd "DEL") 'backward-delete-char)

;;add a space behind ", "
(global-set-key (kbd ",")
#'(lambda ()
                    (interactive)
                    (insert ", ")))
