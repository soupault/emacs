;;; emacs-rc-bindings.el ---


;; Font size
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; File finding
(when (fboundp 'ibuffer)
  (global-set-key (kbd "C-x C-b") 'ibuffer))
(when (fboundp 'recentf-mode)
  (global-set-key (kbd "M-<f12>") 'recentf-open-files)
  (global-set-key (kbd "C-x f") 'recentf-ido-find-file))

;; Window switching
(windmove-default-keybindings)

;; Editing
(global-set-key (kbd "C-c C-j") 'join-line)
(global-set-key (kbd "C-c C-d") 'duplicate-line)
(global-set-key (kbd "<delete>") 'delete-char)
(global-set-key (kbd "M-S") 'toggle-input-method)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)
(global-set-key (kbd "<return>") 'newline-maybe-indent)

;; Misc
(global-set-key (kbd "C-x c") 'kill-daemon)
(global-set-key (kbd "C-c h") 'hs-hide-block)
(global-set-key (kbd "C-c s") 'hs-show-block)
(when (fboundp 'magit-status)
  (global-set-key (kbd "C-c g") 'magit-status))


;;; emacs-rc-bindings.el ends here
