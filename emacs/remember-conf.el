;; From: http://members.optusnet.com.au/~charles57/GTD/remember.html

;;(setq remember-annotation-functions '(org-remember-annotation))
;;(setq remember-handler-functions '(org-remember-handler))
;;(add-hook 'remember-mode-hook 'org-remember-apply-template)
(org-remember-insinuate)

(setq org-directory "~/orgfiles/")
(setq org-default-notes-file "~/.notes")
(define-key global-map "\C-cr" 'org-remember)

;; Templates

(setq org-remember-templates
      '(("Todo" ?t "* TODO %?\n %i\n %a" "~/.todo.org" "Tasks")))
