(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

;; Allow mouse scrolling from terminal
;;(xterm-mouse-mode)
;;(global-set-key (kbd "<mouse-4>") 'scroll-down-line)
;;(global-set-key (kbd "<mouse-5>") 'scroll-up-line)


;;God, this is annoying
;; http://stackoverflow.com/questions/29328960/
;;       how-to-disable-auto-indentation-on-newline-in-js2-mode
(electric-indent-mode -1)

;;(autoload 'espresso-mode "espresso")
;;(load "highlight-chars")

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)
(setq mac-command-modifier 'meta)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(autoload 'php-mode "php-mode" "PHP mode" t)

(setq auto-mode-alist (append '(("\\.php$" . php-mode))
                              auto-mode-alist))

(setq next-screen-context-lines 6)


;; Load mode specific configuration. Symlinks don't work right now so
;; these files have to be in the right place..

(load "~/rc/emacs/js2-conf-basic.el")
(load "~/rc/emacs/python-conf.el")
(load "~/rc/emacs/ruby-conf.el")
(load "~/rc/emacs/yaml-conf.el")
(load "~/rc/emacs/go-conf.el")
(load "~/rc/emacs/c-conf.el")
(load "~/rc/emacs/proto-conf.el")
(load "~/rc/emacs/haskell-conf.el")
(load "~/rc/emacs/coffee-conf.el")
(load "~/rc/emacs/helm-conf.el")
(load "~/rc/emacs/projectile-conf.el")
(load "~/rc/emacs/tide-conf.el")
;; (load "~/rc/emacs/clipboard.el")

(defface egoge-display-time
  '((((type x w32 mac))
     ;; #060525 is the background colour of my default face.
     (:foreground "#060525" :inherit bold))
    (((type tty))
     (:foreground "#FF6363")))
  "Face used to display the time in the mode line.")
;; This causes the current time in the mode line to be displayed in
;; `egoge-display-time-face' to make it stand out visually.
(setq display-time-string-forms
      '((propertize (concat " "24-hours ":" minutes " - "
                            monthname day " (" dayname ") ")
                     'face 'egoge-display-time)))
(display-time-mode 1)

(column-number-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(package-selected-packages
   (quote
    (helm-ack haml-mode go-mode pug-mode company-c-headers tide flycheck company jinja2-mode yaml-mode typescript-mode markdown-mode js2-mode helm-projectile haskell-mode column-marker coffee-mode ack))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
