
;;(package-refresh-contents)

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; expand region and keyboard macro
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
(require 'auto-complete)
(require 'idle-highlight-mode)
(require 'dashboard)

;; mouse functionality
(global-set-key (kbd "<mouse-4>") 'next-buffer)
(global-set-key (kbd "<mouse-5>") 'previous-buffer)
(setq mouse-wheel-tilt-scroll 1)

(set-keyboard-coding-system nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(global-ede-mode t)
 '(package-selected-packages
   (quote
    (python-environment python-environmentut gnu-elpa-keyring-update expand-region idle-highlight-mode auto-complete))))
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
;;(global-highlight-changes-mode 1)
;; show changes with f6
;; "toggle visibility"
;;(global-set-key (kbd "<f6>")      'highlight-changes-visible-mode) ;; changes
;; no backup files (eg main.cpp~)
(setq make-backup-files nil)
;;turns off line wrapping
(set-default 'truncate-lines t)
;;line numbers enabled
(global-linum-mode t)
;; highlight words
;; from: idle-highlight-mode package
(add-hook 'prog-mode-hook (lambda () (idle-highlight-mode t)))
;; scroll two lines at a time (less "jumpy" than defaults)
;; two lines at a time
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2)))
;; don't accelerate scrolling
(setq mouse-wheel-progressive-speed nil)
;;do not display start screen
(setq inhibit-startup-screen t)
;; Forces the messages to 0, and kills the *Messages* buffer - thus disabling it on startup.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")
;;highlight the matching delimeter after 0 seconds
(setq show-paren-delay 0)
(show-paren-mode 1)
;;autcomplete
;;from: auto-complete package
(ac-config-default)
;;if no style is manually selected
;;4 spaces for tabs
(setq c-default-style "bsd"
      c-basic-offset 4)
;; 4 spaces are used rather than a tab character
(setq-default indent-tabs-mode nil)
;;Last copied text is stored right before the last killed text in the kill ring (copied text includes non emacs programs)
;;i.e. copy > kill > C-y > M-y pastes last copied text even after you kill some text
(setq save-interprogram-paste-before-kill t)
;; Keeps buffer from pausing when aggresively scrolling
(setq redisplay-dont-pause t)
;;highlited text color (green background, blue text)
(set-face-attribute 'region nil :background "#51b85d" :foreground "#2d4173")
;;DASHBOARD--------------------
(dashboard-setup-startup-hook)
(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
;; Set the banner
(setq dashboard-startup-banner 3)
;; Value can be
;; 'official which displays the official emacs logo
;; 'logo which displays an alternative emacs logo
;; 1, 2 or 3 which displays one of the text banners
;; "path/to/your/image.png" which displays whatever image you would prefer
;; Content is not centered by default. To center, set
(setq dashboard-center-content t)
;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)
(setq dashboard-items '((recents  . 5)))
(setq dashboard-footer "Welcome John")
;;end doc



