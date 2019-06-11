
;;this adds melpa which enables M-x customize-themes to open a menu with some custom themes
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-refresh-contents)
(package-initialize)

(set-keyboard-coding-system nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(global-ede-mode t)
 '(package-selected-packages (quote (idle-highlight-mode auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;doesnt beep when you scroll to bottom of page, displays an image instead
(setq visible-bell 1)
;;inserts right delimeters, So typing '(' produces '()'
(electric-pair-mode 1)
;;highlights all file changes untill save and refresh
(global-highlight-changes-mode 1)
;;show changes with f6
;; toggle visibility
(global-set-key (kbd "<f6>")      'highlight-changes-visible-mode) ;; changes
;;Allows side scroller on mouse to work
(setq mouse-wheel-tilt-scroll 1)
;; no backup files (eg main.cpp~)
(setq make-backup-files nil)
;;turns off line wrapping
(set-default 'truncate-lines t)
;;line numbers enabled
(global-linum-mode t)
;; highlight words
;;from: idle-highlight-mode package
(add-hook 'prog-mode-hook (lambda () (idle-highlight-mode t)))
;; scroll two lines at a time (less "jumpy" than defaults)
;; two lines at a time
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2)))
;; don't accelerate scrolling
(setq mouse-wheel-progressive-speed nil)
;;highlight the matching delimeter after 0 seconds
(setq show-paren-delay 0)
(show-paren-mode 1)
;;autcomplete
;;from: auto-complete package
(ac-config-default)
;;if no style is manually selected
;;indentation style is
;;for()
;;{
;;1234for()
;;}
(setq c-default-style "bsd"
      c-basic-offset 4)

;;end doc
