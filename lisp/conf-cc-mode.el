(defconst kernel-normal-form
  '("bsd"
    (c-basic-offset . 8)
    (c-offsets-alist
     (arglist-cont . 4)
     (arglist-cont-nonempty . 4)
     (label . 0)
     (statement-cont . 4))
    (fill-column . 80)
    (indent-tabs-mode . t))
  "Coding style for C source files.")

(c-add-style "knf" kernel-normal-form)
(add-to-list 'c-default-style '(c-mode . "knf"))
