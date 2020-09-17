(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(dracula))
 '(custom-safe-themes
   '("24714e2cb4a9d6ec1335de295966906474fdb668429549416ed8636196cb1441" default))
 '(doom-modeline-github t)
 '(doom-modeline-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(ivy-explorer evil-collection git-gutter lsp-java javap-mode projectile lsp-mode company evil-magit magit helm-icons helm god-mode which-key centaur-tabs treemacs-all-the-icons all-the-icons-ivy treemacs-evil evil doom-modeline doom dracula-theme gnu-elpa)))
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)


(require 'doom-modeline)
(require 'treemacs-evil)
(require 'evil)
(require 'which-key)
(require 'centaur-tabs)
(require 'evil-magit)
(require 'company)
(require 'projectile)
(require 'lsp-mode)
(require 'lsp-java)
(require 'git-gutter)

(add-hook 'java-mode-hook #'lsp)

(treemacs-git-mode 'deferred)
(global-git-gutter-mode +1)
(projectile-mode +1)
(doom-modeline-mode 1)
(evil-mode 1)
(which-key-mode)
(which-key-setup-side-window-bottom)
(helm-icons-enable)
(centaur-tabs-mode t)
(centaur-tabs-headline-match)

(setq centaur-tabs-style "box")
(setq centaur-tabs-set-icons t)
(setq centaur-tabs-height 38)
(setq centaur-tabs-set-modified-marker t)

(centaur-tabs-change-fonts "NotoMono Nerd Font Mono" 96)

(define-prefix-command 'my-leader-map)
(evil-define-key 'normal global-map (kbd "SPC") 'my-leader-map)

(load "~/.emacs.d/keys.el")
(require 'keys)

(add-hook 'after-init-hook 'global-company-mode)

;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
