(setq message-confirm-send t
      message-fill-column 72
      message-kill-buffer-on-exit t)

(add-hook 'message-mode-hook 'flyspell-mode)
(add-hook 'message-mode-hook 'footnote-mode)
(add-hook 'message-mode-hook 'turn-on-auto-fill)
