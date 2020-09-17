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
  "f" 'helm-find-files
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
  )

(global-set-key (kbd "	") 'company-complete)

(provide 'keys)
