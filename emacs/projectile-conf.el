(setq projectile-enable-caching t)
(setq projectile-keymap-prefix (kbd "C-c p"))
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(global-set-key (kbd "C-c p s a") 'helm-projectile-ack)
