(auto-compression-mode 1)
(column-number-mode 1)
(delete-selection-mode 1)
(epa-file-enable)
(global-font-lock-mode 1)
(line-number-mode 1)
(show-paren-mode 1)
(temp-buffer-resize-mode 1)
(transient-mark-mode 0)

(setq auto-save-default nil
      compilation-read-command nil
      compilation-window-height 10
      confirm-kill-emacs 'y-or-n-p
      debug-on-error t
      disabled-command-function nil
      gc-cons-threshold (* 12 1024 1024)
      hscroll-step 1
      inhibit-startup-screen t
      initial-scratch-message nil
      mac-command-modifier 'ctrl
      mac-option-modifier 'meta
      make-backup-files nil
      mouse-yank-at-point t
      query-replace-highlight t
      scroll-conservatively 10000
      scroll-step 1
      search-highlight t
      shift-select-mode nil
      split-height-threshold 20
      temp-buffer-max-height 10
      use-dialog-box nil
      visible-bell nil)

(setq-default case-fold-search t
	      fill-column 72
	      indent-tabs-mode t
	      indicate-buffer-boundaries t
	      indicate-empty-lines t
	      major-mode 'text-mode
	      tab-width 8)

;; Use `y-or-n-p' to ask yes-no questions.
(fset 'yes-or-no-p 'y-or-n-p)

;; Set UTF-8 as the preferred character encoding.
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8-unix)

(setq default-frame-alist
      '((menu-bar-lines . 0)
	(tool-bar-lines . 0)
	(vertical-scroll-bars . nil))
      window-system-default-frame-alist
      '((mac (menu-bar-lines . 1))))

(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-/") 'hippie-expand)
(windmove-default-keybindings 'shift)

(defalias 'dc 'desktop-clear)
(defalias 'qr 'query-replace)
(defalias 'wc 'whitespace-cleanup)

(add-to-list 'auto-mode-alist '("/tmp/mutt.*" . message-mode))

;; Load `custom-file'.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file t)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Load & activate packages.
(package-initialize)

;; Load custom theme.
(let ((themes (custom-available-themes)))
  (cond ((memq 'wombat themes) (load-theme 'wombat t))))
