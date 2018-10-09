;;; packages.el --- Verilog layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: 郑文浩 <zwh@zwh.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `Verilog-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `Verilog/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `Verilog/pre-init-PACKAGE' and/or
;;   `Verilog/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst Verilog-packages
  '(verilog-mode)
  "The list of Lisp packages required by the Verilog layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun Verilog/init-verilog-mode()

  (autoload 'verilog-mode "verilog-mode" "Verilog mode" t )
  (add-to-list 'auto-mode-alist '("\\.[ds]?vh?\\'" . verilog-mode))

  ;; Enable syntax highlighting of **all** languages
  (global-font-lock-mode t)

  ;; User customization for Verilog mode
  (setq verilog-indent-level             3
        verilog-indent-level-module      3
        verilog-indent-level-declaration 3
        verilog-indent-level-behavioral  3
        verilog-indent-level-directive   1
        verilog-case-indent              2
        verilog-auto-newline             t
        verilog-auto-indent-on-newline   t
        verilog-tab-always-indent        t
        verilog-auto-endcomments         t
        verilog-minimum-comment-distance 40
        verilog-indent-begin-after-if    t
        verilog-auto-lineup              'declarations
        verilog-highlight-p1800-keywords nil
        verilog-linter                   "my_lint_shell_command"
        )
)

;;; packages.el ends here
