(define-prefix-command 'my-leader-map)
(evil-define-key 'normal global-map (kbd "SPC") 'my-leader-map)
(evil-define-key 'visual global-map (kbd "SPC") 'my-leader-map)

; this line fixes the 'bug' where spc wont do anything in treemacs
(evil-define-key 'treemacs treemacs-mode-map (kbd "SPC") #'my-leader-map)

(defun define-keys (map key def &rest bindings)
  (while key
    (define-key map (read-kbd-macro key) def)
    (setq key (pop bindings)
          def (pop bindings))))

(defun define-leader-keys (map prefix key def &rest bindings)
  (define-prefix-command  map) 
  (define-key my-leader-map prefix map)
  (apply 'define-keys map key def bindings))

;Org-mode
(define-leader-keys 'org-mode-map-leader "o"
  "u" 'my-org-cycle-current-headline
  "i" 'org-clock-in
  "o" 'org-clock-out
  "t" 'org-babel-tangle
  "a" 'org-agenda
  )

;File managment
(define-leader-keys 'file-managment "f"
  "t" 'treemacs
  "f" 'counsel-fzf
  "F" 'counsel-find-file
  )

;Window managment
(define-leader-keys 'window-managment "w"
  "h" 'windmove-left
  "j" 'windmove-down
  "k" 'windmove-up
  "l" 'windmove-right
  "k" 'delete-window
  )

;Tab managment
(define-leader-keys 'tab-managment "t"
  "h" 'centaur-tabs-backward 
  "l" 'centaur-tabs-forward
  "c" 'centaur-tabs--kill-this-buffer-dont-ask
  )

;comments
(define-leader-keys 'commenter "c"
  "c" 'evilnc-comment-or-uncomment-lines
  "r" 'comment-or-uncomment-region
  )

;Git
(define-leader-keys 'git-managment "g"
  "g" 'magit
  "r" 'magit-reflog
  "c" 'magit-commit
  "P" 'magit-pull
  "f" 'magit-fetch
  "p" 'magit-push
  "C" 'magit-checkout
  "l" 'magit-log
  )

;buffer managment
(define-leader-keys 'buffer-managment "b"
  "k" 'kill-buffer
  "s" 'switch-to-buffer
  "n" 'next-buffer
  "p" 'previous-buffer
  )

;project managment
(define-leader-keys 'project-managment "p"
  "a" 'projectile-add-known-project
  "p" 'projectile-switch-project
  "n" 'projectile-next-project-buffer
  "f" 'projectile-find-file
  )

;qutting/saving
(define-leader-keys 'qutting "q"
  "q" 'quit-window
  "Q" 'kill-emacs
  "m" 'exit-minibuffer
  )

(global-set-key (kbd "\t") 'company-complete)

(provide 'keys)
