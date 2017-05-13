;; ==========================================================================

;;                        GNU GENERAL PUBLIC LICENSE
;;                        Version 3, 29 June 2007
;;  
;;  Copyright (C) 2007 Free Software Foundation, Inc. <http://fsf.org/>
;;  Everyone is permitted to copy and distribute verbatim copies
;;  of this license document, but changing it is not allowed.

;; ==========================================================================

;; ==========================================================================

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; ==========================================================================

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
(load-theme 'ir-black t)
(set-frame-font "xos4 Terminus-12")

;; ==========================================================================

(delete-selection-mode t)
(tooltip-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(show-paren-mode t)

;; ==========================================================================

(setq inhibit-startup-screen t)
(setq use-dialog-box nil)
(setq make-backup-files nil)

;; ==========================================================================

(line-number-mode t)
(column-number-mode t)
(global-visual-line-mode t)
(setq word-wrap t)
(global-vim-empty-lines-mode)

;; ==========================================================================

(defalias 'yes-or-no-p 'y-or-n-p)

(require 'auto-complete)
(ac-config-default)

(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

(require 'yasnippet)
(yas-global-mode 1)

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(require 'iedit)
(define-key global-map (kbd "C-c ;") 'iedit-mode)

(pdf-tools-install)
(add-hook 'pdf-view-mode-hook
	  (lambda ()
	    (global-vim-empty-lines-mode -1)))

;; ==========================================================================

