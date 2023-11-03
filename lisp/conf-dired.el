(setq dired-listing-switches "-AFhl"
      dired-recursive-deletes 'always)

(when (require 'dired-x nil t)
  (setq	dired-omit-files (concat dired-omit-files "\\|^\\."))
  (add-hook 'dired-mode-hook 'dired-omit-mode))

(defadvice dired-find-file (around dired-find-file activate)
  (if (file-accessible-directory-p (dired-get-file-for-visit))
      (dired-find-alternate-file)
    ad-do-it))

(defun dired-goto-parent ()
  (interactive)
  (find-alternate-file "../"))

(define-key dired-mode-map (kbd "<backspace>") 'dired-goto-parent)
(define-key dired-mode-map (kbd "^") 'dired-goto-parent)
(define-key dired-mode-map (kbd "/") 'isearch-forward)
(define-key dired-mode-map (kbd "$") 'shell)
