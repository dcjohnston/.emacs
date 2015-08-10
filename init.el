(require 'package)
(package-initialize)

(setq backup-directory-alist `(("." . "~/.saves")))

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)


(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))


(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)
(setq emmet-preview-default nil)

(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2mode)
(setq js2-hightlight-level 3)


(setq-default indent-tabs-mode t)
(setq-default tab-width 4) ; Assuming you want your tabs to be four spaces wide
(defvaralias 'c-basic-offset 'tab-width)

(require 'color-theme-sanityinc-solarized)
(color-theme-sanityinc-solarized--define-theme dark)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes nil)
 '(display-time-mode t)
 '(mouse-wheel-mode nil)
 '(ns-command-modifier (quote meta))
 '(ns-right-command-modifier (quote control))
 '(show-paren-mode t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
(autoload 'jsx-mode "jsx-mode" "JSX mode" t)

;;(add-hook 'js-mode-hook 'fly-check-mode)

;; when in dired more, 'e' opens file without switching buffes
;; this way i can open a bunch, then flip thru by listing open
;; buffers
;; filesets might be easier but i was having trouble getting them set 
(add-hook 'dired-mode-hook 'derek-dired-easy-open)
(defun derek-dired-easy-open ()
  (local-set-key (kbd "e") 'dired-display-file))


(global-set-key (kbd "C-e") 'next-buffer)
(global-set-key (kbd "C-q") 'previous-buffer)
(global-set-key (kbd "M-2") 'split-window-right)
(global-set-key (kbd "M-1") 'delete-window)
;; (global-set-key (kbd "C-b") (lambda ()
;;                               (interactive)
;;                               (list-buffers)
;;                               (other-window -1)))
(global-set-key (kbd "C-w") 'indent-for-tab-command)

(setq-default message-log-max nil)
(kill-buffer "*Messages*")
(setq inhibit-startup-message t)

(require 'linum)
(global-linum-mode 1)
(setq linum-format "%d ")

(fset 'yes-or-no-p 'y-or-n-p)

(setq make-backup-files nil) 

(set-face-attribute 'mode-line-buffer-id nil :foreground "teal")

(toggle-diredp-find-file-reuse-dir 1)

;; (require 'yasnippet)
;; (yas-global-mode 1)
(require 'auto-complete-config)
(ac-config-default)
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")
