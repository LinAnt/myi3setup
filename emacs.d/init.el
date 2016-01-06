(setq user-full-name "Anton Lindholm")
(setq user-mail-address "anton.c.e.lindholm@gmail.com")


(add-to-list 'load-path (expand-file-name "subconfigs" user-emacs-directory))
(require 'init-packages)
(require 'init-programming)
(require 'init-colors)
(require 'init-evil)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" default))))
 

(provide 'init)
