;; Load feature configuration files on the fly.
(let ((directory (expand-file-name "lisp" user-emacs-directory)))
  (dolist (file (directory-files directory))
    (when (string-match (format "^conf-\\(.+\\)\\.el$") file)
      (eval-after-load (match-string-no-properties 1 file)
	`(load ,(expand-file-name file directory) nil)))))
