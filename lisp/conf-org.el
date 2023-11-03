(setq org-ellipsis "…"
      org-hide-leading-stars t
      org-startup-indented t)

(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'turn-on-auto-fill)
