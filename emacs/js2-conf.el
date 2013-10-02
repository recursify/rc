

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq
      js2-highlight-level 1
      js2-cleanup-whitespace 1
      js2-mode-show-parse-errors nil
      js2-mode-show-strict-warnings 1
      js2-strict-missing-semi-warning nil
      js2-missing-semi-one-line-override nil)
