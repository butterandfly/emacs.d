(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)


;;; 显示行数
(global-linum-mode t)
(setq linum-format "%4d ")

;;; 取消备份
(setq make-backup-files nil)

;;; evil-mode
(require 'evil)
(evil-mode 1)

;;;;;;; golang ;;;;;;;
;;; go-mode
(require 'go-mode-autoloads)
;;; 2空格缩进
(add-hook 'go-mode-hook
	  (lambda ()
	    (add-hook 'before-save-hook 'gofmt-before-save)
	    (setq tab-width 2)
	                (setq indent-tabs-mode nil)))
;;; auto complete
(add-to-list 'load-path "~/.emacs.d/golang")
(require 'go-autocomplete)
