
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(require 'auto-complete)
(global-auto-complete-mode t)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
(setq ac-auto-start 3)
(define-key ac-complete-mode-map "\M-/" 'ac-stop)
(define-key ac-complete-mode-map "\t" 'ac-complete)
(define-key ac-complete-mode-map "\r" nil)
(setq ac-dwim t)
(setq-default ac-sources '(ac-source-abbrev ac-source-words-in-buffer))

(add-hook 'emacs-lisp-mode-hook
 (lambda ()
 (setq ac-sources '(ac-source-words-in-buffer ac-source-symbols))))

;; Completion words longer than 4 characters
(custom-set-variables
  '(ac-ispell-requires 4)
  '(ac-ispell-fuzzy-limit 4))

(eval-after-load "auto-complete"
  '(progn
      (ac-ispell-setup)))

(add-hook 'git-commit-mode-hook 'ac-ispell-ac-setup)
(add-hook 'mail-mode-hook 'ac-ispell-ac-setup)

(require 'auto-dictionary)
(add-hook 'flyspell-mode-hook (lambda () (auto-dictionary-mode 1)))

(require 'latex-extra)
(add-hook 'LaTeX-mode-hook #'latex-extra-mode)

(latex-preview-pane-enable)

(require 'vlf-setup)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-,") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;           GLOBAL EMACS OPTIONS              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; mode

(winner-mode 1)
(global-hi-lock-mode 1)
(ido-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(global-linum-mode 1)
(global-hl-line-mode 1)
(visual-line-mode t)
(global-visual-line-mode t)
(menu-bar-mode -1)
(tool-bar-mode -1)
;(pdf-tools-install)

;; variable

;; fontify code in code blocks
(setq org-src-fontify-natively t)
(setq x-alt-keysym 'meta)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-use-filename-at-point 'guess)
(setq ido-create-new-buffer 'always)
(setq display-time-mode t)
(setq display-battery-mode t)
(display-time)
(setq size-indication-mode t)
(setq-default indicate-empty-lines t)
(setq-default show-trailing-whitespace t)
(setq-default indicate-buffer-boundaries 'left)
(setq bookmark-save-flag 1)
(put 'narrow-to-region 'disabled nil)
(setq large-file-warning-threshold nil)
(put 'scroll-left 'disabled nil)
(setq standard-indent 2)
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))
(fset 'yes-or-no-p 'y-or-n-p)

;; appros

(setq apropos-sort-by-scores t)

;; frame title

(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
        '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; show full name

(defun show-file-name ()
  "Show the full path file name in the minibuffer."
  (interactive)
  (message (buffer-file-name))
)

;;(add-to-list 'default-frame-alist '(fullscreen . maximized))
;;(add-hook 'window-setup-hook 'toggle-frame-fullscreen t)

(when window-system
  (let (
        (px (display-pixel-width))
        (py (display-pixel-height))
        (fx (frame-char-width))
        (fy (frame-char-height))
        tx ty
        )
    ;; Next formulas discovered empiric on Windows host with default font.
    (setq tx (- (/ px fx) 7))
    (setq ty (- (/ py fy) 4))
    (setq initial-frame-alist '((top . 2) (left . 2)))
    (add-to-list 'initial-frame-alist (cons 'width tx))
    (add-to-list 'initial-frame-alist (cons 'height ty))
    )
)

;; startup

(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                     keyboard macro                            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fset 'hline_place
   [down ?\C-e return ?\\ ?g backspace ?h ?l ?i ?n ?e])

(fset 'readme_make_check_name
   [?\C-  ?\C-\M-f ?\M-w ?\M-> ?\C-u ?2 ?0 ?= return ?\C-y return ?\C-u ?2 ?0 ?- return ?C ?L ?E ?A ?N return return ?\C-u ?\C-  ?\C-u ?\C- ])

(fset 'CS_emacs_subsection
   [?\\ ?s ?u ?b ?s ?e ?c ?t ?i ?o ?n ?\{ ?\} return ?\\ ?b ?e ?g ?i ?n ?\{ ?\} left ?t ?a ?b ?u ?l ?a ?r right ?\{ ?\} left  ?p  ?{  ?0  ?.  ?4  ?\\  ?l  ?i  ?n  ?e  ?w  ?i  ?d  ?t  ?h  ?}  ?  ?p  ?{  ?0  ?.  ?5  ?\\  ?l  ?i  ?n  ?e  ?w  ?i  ?d  ?t  ?h  ?}   right return ?\\ ?h ?l ?i ?n ?e return ?\\ ?t ?e ?x ?t ?b ?f ?\{ ?\} left ?K ?E backspace ?e ?y ?s right ?  ?& ?\S-  ?\\ ?t ?e ?x ?t ?b ?f ?\{ ?\} left ?A ?c ?t ?i ?o ?n ?s right ?\\ ?\\ return ?\\ ?h ?l ?i ?n ?e return ?\\ ?h ?l ?i ?n ?e return ?\\ ?e ?n ?d ?\{ ?\} left ?t ?a ?b ?u ?l ?a ?r right return ?\C-r ?s ?u ?\C-e ?\C-b])


(fset 'perl_uncomment_block
   [?\C-x ?n ?n ?\M-x ?r ?e ?p ?l tab ?r ?e tab ?g tab return ?# kp-multiply left left ?^ right right backspace kp-add return return ?\C-x ?n ?w])

(fset 'copy_full_file_name
   [?\C-h ?v ?b ?u ?f ?f ?e ?r ?- ?f ?i ?l tab ?n ?a ?m ?e return ?\C-x ?o down down right ?\S-\C-e S-left ?\M-w ?\C-x ?0])

(fset 'SKILL_header
   [?\M-< return return return ?\M-< ?\; ?l ?o ?a ?d ?i ?  ?\" ?\M-x ?c ?o ?p tab ?- backspace ?_ ?f ?u ?l ?l tab return ?\C-y ?\"])

(fset 'perl_comment_block
   [?\C-x ?n ?n ?\M-< ?\M-x ?r ?e ?p ?l tab ?r ?e ?g tab return ?^ return ?# return ?\C-x ?n ?w])

(fset 'kill_word_back_cursor
   [?\C-  ?\M-b ?\C-x ?n ?n ?\C-w ?\C-x ?n ?w])

(fset 'backward-kill-line
   [?\C-  ?\C-a ?\C-w])

(fset 'mark-full-word-under-cursor
   [?\M-b ?\C-  ?\M-f])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                     bind keys                   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-x O") 'previous-multiframe-window)
(global-set-key "\M-K" 'backward-kill-sentence ) ;M-k kills backward sentense
(global-set-key "\M-k" 'kill-sentence ) ;M-K kills forward sentense
(global-set-key [C-f1] 'show-file-name) ; Or any other key you want
(global-set-key "\M-D" 'kill_word_back_cursor ) ;C-d kills word to the left
(global-set-key [delete] 'delete-char ) ;C-d kills word to the left
(global-set-key (kbd "C-S-k") 'backward-kill-line ) ;C-K kills backward line
(global-set-key (kbd "C-M-S-k") 'backward-kill-sexp ) ;C-M-K kills backward balanced expression
(global-set-key [capslock] '\C) ; <----- does not work
(global-set-key (kbd "C-@") 'mark-full-word-under-cursor ) ;C-S-2 mark full word by before and after word movement
(global-set-key [f1] '(lambda() (interactive) (ansi-term "/bin/bash")));start shell replaced with help button
(global-set-key (kbd "\C-x p") 'eval-buffer);eval buffer
(global-set-key [remap kill-ring-save] 'easy-kill)
(global-set-key [remap mark-sexp] 'easy-mark)
