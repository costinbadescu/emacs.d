(setq ispell-dictionary "en_US"
      ispell-hunspell-dictionary-alist
      '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil nil nil utf-8))
      ispell-program-name
      (or (executable-find "aspell")
	  (executable-find "hunspell")
	  (executable-find "ispell")))
