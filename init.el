(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)
(setq emmet-preview-default nil)

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

(global-set-key (kbd "C-a") 'backward-word)
(global-set-key (kbd "C-d") 'forward-word)
(global-set-key (kbd "C-w") 'backward-paragraph)
(global-set-key (kbd "C-s") 'forward-paragraph)
(global-set-key (kbd "C-e") 'next-buffer)
(global-set-key (kbd "C-q") 'previous-buffer)


(setq-default indent-tabs-mode nil)

;; make me a real LISP!
(add-hook 'js-mode-hook 'flymake-jshint-load)

(setq-default message-log-max nil)
(kill-buffer "*Messages*")
(setq inhibit-startup-message t)

(require 'linum)
(global-linum-mode 1)
(setq linum-format "%d ")

(fset 'yes-or-no-p 'y-or-n-p)

(setq make-backup-files nil) 

(set-face-attribute 'mode-line-buffer-id nil :foreground "teal")

;; ;; Compilation mode
;; ;; Compilation ;;;;;;;;;;;;;;;;;;;;;;;;;
;; (setq compilation-scroll-output t)
;; ;;(setq compilation-window-height nil)

;; (setq compilation-ask-about-save nil)
;; (setq compilation-save-buffers-predicate '(lambda () nil))


;; (defvar aj-compilation-saved-window-configuration nil
;;   "Previous window conf from before a compilation")

;; (defvar aj-compile-command ""
;;   "The compile command used by compilation-start since
;;   `compile-command' is only saved by `compile' command.")

;; ;; Hide *compilation* buffer if compile didn't give erros
;; (defadvice compilation-start (before aj-compilation-save-window-configuration(command comint))
;;   "Save window configuration before compilation in
;; `aj-compilation-saved-window-configuration'"

;;   ;; compile command is not saved in compilation-start function only in
;;   ;; compile function (rgrep only uses compilation-start)
;;   (setq aj-compile-command command)
;;   ;; Save window configuration
;;   (setq aj-compilation-saved-window-configuration
;;         (current-window-configuration)))
;; (ad-activate 'compilation-start)

;; ;; compilation-handle-exit returns (run-hook-with-args
;; ;; 'compilation-finish-functions cur-buffer msg) Could use but it only
;; ;; got a string describing status
;; (defadvice compilation-handle-exit
;;   (after aj-compilation-exit-function(process-status exit-status msg))
;;   "Hack to restore window conf"
;;   (let ((hide (string-match "find" aj-compile-command)))
;;     (when (and (eq process-status 'exit)
;;                (zerop exit-status)
;;                ;; Not nil and not 0 means that command was "find" at
;;                ;; pos 0 which means that I don't want to restore the
;;                ;; layout
;;                (not (and (integerp hide) (zerop hide))))
;;       (set-window-configuration aj-compilation-saved-window-configuration))))
;; (ad-activate 'compilation-handle-exit)

;; (provide 'aj-compilation)

(toggle-diredp-find-file-reuse-dir 1)
