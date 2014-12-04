;; custom
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(global-linum-mode 1)

(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
    (with-current-buffer
            (url-retrieve-synchronously
	             "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
	        (goto-char (point-max))
		    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get/el-get/recipes")
(el-get 'sync)

;; el-get personal recipes
(setq el-get-sources
      '((:name el-get :branch "master")
       ;; [emacs enhancement]better C-x o
       (:name switch-window
              :after (global-set-key (kbd "C-x o") 'switch-window))
       (:name ido-ubiquitous
              :after (progn
                       (ido-mode t)))
))

;; el-get official recipes
(setq official-recipes
    (append
     '(switch-window
       markdown-mode json-mode ;; emacs edit enhancement
      )
    (mapcar 'el-get-as-symbol (mapcar 'el-get-source-name el-get-sources))))

(el-get 'sync official-recipes)
