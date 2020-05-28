;; this is config file from jly of emacs
;; mainly we change package source to tsinghua university mirrors
;; you should first use "M-x: package-install RET use-package RET"


(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq frame-title-format "%b")
(setq default-directory "D:/home/jly")
(setq command-line-default-directory  "D:/home/jly/")

(dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family "Microsoft Yahei" :size 30)))

(prefer-coding-system 'utf-8)
(setq file-name-coding-system 'gbk)

(desktop-save-mode 1)
(global-linum-mode t)
(setq linum-format "%d  ")

(setq org-tag-alist '((:startgroup . nil)
                      ("@read" . nil)
                      (:grouptags . nil)
                      ("@read_book" . nil)
                      ("@read_ebook" . nil)
                      (:endgroup . nil)))

(customize-set-variable
 'org-todo-keywords
 '((sequence "TODO(t)" "NEXT(n)" "WAITING(w)" "|"
             "DONE(d)" "CANCELLED(c)")))


(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE" "MEETING"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
             ("NEXT" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold)
              ("MEETING" :foreground "forest green" :weight bold)
              ("PHONE" :foreground "forest green" :weight bold))))


;; 打开org-indent mode
(setq org-startup-indented t)

;; 设置bullet list
;;(setq org-bullets-bullet-list '("☰" "☷" "☯" "☭"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" default)))
 '(fci-rule-color "#073642")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (quote
    ("#3b6b40f432d6" "#07b9463c4d36" "#47a3341e358a" "#1d873c3f56d5" "#2d86441c3361" "#43b7362d3199" "#061d417f59d7")))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#5b7300" . 20)
     ("#007d76" . 30)
     ("#0061a8" . 50)
     ("#866300" . 60)
     ("#992700" . 70)
     ("#a00559" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#866300" "#992700" "#a7020a" "#a00559" "#243e9b" "#0061a8" "#007d76" "#5b7300")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(lsp-ui-doc-border "#93a1a1")
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#5b7300" "#b3c34d" "#0061a8" "#2aa198" "#d33682" "#6c71c4")))
 '(org-agenda-files (list org-directory))
 '(org-directory "~")
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "NEXT(n)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)"))))
 '(package-selected-packages
   (quote
    (org-bullets org-bullet htmlize cnfonts solarized-theme projectile exec-path-from-shell neotree magit markdown-mode scala-mode counsel youdao-dictionary super-save smex company evil-nerd-commenter evil-leader which-key use-package try evil)))
 '(pdf-annot-activate-created-annotations t t)
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#cb4366eb20b4")
     (60 . "#c1167942154f")
     (80 . "#b58900")
     (100 . "#a6ae8f7c0000")
     (120 . "#9ed892380000")
     (140 . "#96be94cf0000")
     (160 . "#8e5397440000")
     (180 . "#859900")
     (200 . "#77679bfc4635")
     (220 . "#6d449d465bfd")
     (240 . "#5fc09ea47092")
     (260 . "#4c68a01784aa")
     (280 . "#2aa198")
     (300 . "#303498e7affc")
     (320 . "#2fa1947cbb9b")
     (340 . "#2c879008c736")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#a7020a" "#dc322f" "#5b7300" "#859900" "#866300" "#b58900" "#0061a8" "#268bd2" "#a00559" "#d33682" "#007d76" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))


;; (setq org-agenda-files (list "~/doc/org/linux.org"
;;                      "~/doc/org/work.org"
;;                      "~/doc/org/home.org"))

;; 配置归档文件的名称和Headline格式
(setq org-archive-location "%s_archive::date-tree")


;; PDFs visited in Org-mode are opened in Evince (and not in the default choice) https://stackoverflow.com/a/8836108/789593
(add-hook 'org-mode-hook
      '(lambda ()
         ;;(delete '("\\.pdf\\'" . default) org-file-apps)
         (add-to-list 'org-file-apps '("\\.docx\\'" . "WINWORD.EXE %s"))
         (add-to-list 'org-file-apps '("\\.doc\\'" . "WINWORD.EXE %s"))
       ))


;; 中文换行问题
(add-hook 'org-mode-hook 
	  (lambda () (setq truncate-lines nil)))


(global-visual-line-mode t)

(setq longlines-wrap-follows-window-size t)

;;org-tag-alist '(("@work" . ?w) ("@home" . ? h) ("@laptop" . ?l))) 


(require 'recentf)
(recentf-mode 1)

(require 'package)


(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;;(when (not package-archive-contents)
;;  (package-refresh-contents)
;;  (package-install 'use-package))
(require 'use-package)


(load-theme 'solarized-dark t)


;; (use-package cnfonts
;;   :ensure t)

;; (require 'cnfonts)
;; ;; 让 cnfonts 随着 Emacs 自动生效。
;; (cnfonts-enable)
;; ;; 让 spacemacs mode-line 中的 Unicode 图标正确显示。
;; ;; (cnfonts-set-spacemacs-fallback-fonts)


;; (use-package pdf-tools
;;    :pin manual ;; manually update
;;    :config
;;    ;; initialise
;;    (pdf-tools-install)
;;    ;; open pdfs scaled to fit width
;;    (setq-default pdf-view-display-size 'fit-width)
;;    ;; use normal isearch
;;    (define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward)
;;    :custom
   ;; (pdf-annot-activate-created-annotations t "automatically annotate highlights"))

(use-package org-bullets
  :ensure t)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))


(use-package try
	     :ensure t)

(use-package which-key
	     :ensure t
	     :config (which-key-mode t))

(use-package evil
  :ensure t
  :config
  (evil-mode 1)

  (use-package evil-leader
    :ensure t
    :config
    (progn
      (global-evil-leader-mode)
      (setq evil-leader/in-all-states t)
      (evil-leader/set-leader ",")
      (evil-leader/set-key
	 "co" 'evilnc-comment-or-uncomment-lines
	 "cc" 'evilnc-copy-and-comment-lines
         "cp" 'evilnc-comment-or-uncomment-paragraphs)))
  )

(use-package evil-nerd-commenter
  :ensure t)

(use-package projectile
  :demand
  :init   (setq projectile-use-git-grep t)
  :config 
  (projectile-global-mode t)
  (setq projectile-completion-system 'ivy)
  :bind   (("s-f" . projectile-find-file)
           ("s-F" . projectile-grep)))

(use-package company
  :ensure t
  :bind (("C-c /". company-complete))
  :diminish company-mode
  :commands company-mode
  :init
  (setq
   company-dabbrev-ignore-case nil
   company-dabbrev-code-ignore-case nil
   company-dabbrev-downcase nil
   company-idle-delay 0
   company-minimum-prefix-length 4)
  :config
  ;; disables TAB in company-mode, freeing it for yasnippet
  (global-company-mode)
  (define-key company-active-map [tab] nil)
  (define-key company-active-map (kbd "TAB") nil))

(use-package smex
  :ensure t
  :config
  (global-set-key (kbd "M-x") 'smex))

(use-package super-save
  :ensure t
  :config
  ;; (setq super-save-idle-duration 0.3)
  (setq super-save-auto-save-when-idle t)
  (super-save-mode +1))

(use-package youdao-dictionary
  :ensure t
  :init
  (setq url-automatic-caching t)
  :config
  (global-set-key (kbd "C-c y") 'youdao-dictionary-search-at-point+))

(use-package counsel
  :ensure t)

(use-package swiper
  :ensure t
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
;;    (global-set-key "\C-s" 'swiper)
    (global-set-key (kbd "C-c C-r") 'ivy-resume)
    (global-set-key (kbd "<f6>") 'ivy-resume)
    (global-set-key (kbd "M-x") 'counsel-M-x)
    (global-set-key (kbd "C-x C-f") 'counsel-find-file)
    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
    (global-set-key (kbd "<f1> l") 'counsel-find-library)
    (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
    (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
    (global-set-key (kbd "C-c g") 'counsel-git)
    (global-set-key (kbd "C-c j") 'counsel-git-grep)
    (global-set-key (kbd "C-c k") 'counsel-ag)
    (global-set-key (kbd "C-x l") 'counsel-locate)
    (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
    (advice-add 'swiper :after #'recenter)))

(setq markdown-command "D:/Program/Pandoc/pandoc.exe")

(use-package scala-mode
  :ensure t)

(use-package markdown-mode
  :ensure t)

(use-package magit
  :ensure t)

(use-package neotree
  :ensure t)

(use-package exec-path-from-shell ;; otherwise "C-g k" not work
  :ensure t
  :config
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
