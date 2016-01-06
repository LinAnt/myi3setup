(require-package 'evil)
(require-package 'evil-leader)

(evil-mode t)

;;evil-leader configuration
(global-evil-leader-mode t)
(setq evil-leader/in-all-states t) ; leader
(evil-leader/set-leader ",")

(evil-leader/set-key "," 'avy-goto-word-1); ,e for Ace Jump (word)
(evil-leader/set-key "l" 'avy-goto-line);,l for Ace Jump (line)
(evil-leader/set-key "x" 'avy-goto-char);,x for Ace Jump (char)
;;evil-leader ends here.

;; esc quits!
(defun minibuffer-keyboard-quit ()
  "Abort recursive edit.
    In Delete Selection mode, if the mark is active, just deactivate it;
    then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))

(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'evil-exit-emacs-state)
;; end of esc quits!





(provide 'init-evil)
