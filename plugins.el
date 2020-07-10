(setq show-paren-style 'expression)
(show-paren-mode 2)

(c++-mode)

(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)

(add-to-list 'load-path "/home/jimmy/.emacs.d")

(require 'nlinum)
(setq linum-format "%d ")
(global-linum-mode 1)

(require 'bs)
(setq bs-configurations '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))
(global-set-key (kbd "<f2>") 'bs-show)

(add-to-list 'load-path "/home/jimmy/.emacs.d/elpa/auto-complete-1.5.1")
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "/home/jimmy/.emacs.d/elpa/auto-complete-1.5.1/dict")

(require 'sr-speedbar)
(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)

(add-to-list 'load-path "/home/jimy/.emacs.d/elpa/yasnippet-0.14.0")
(require 'yasnippet)
(yas-global-mode 1)
(yas-load-directory "/home/jimmy/.emacs.d/elpa/yasnippet-snippets-0.23/snippets")



