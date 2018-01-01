;;; begin --- init.el starts here
;;; Commentary:
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'org)

;;; Code:
(org-babel-load-file "~/.emacs.d/settings.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-ispell-fuzzy-limit 4)
 '(ac-ispell-requires 4)
 '(beacon-color "#F8BBD0")
 '(custom-enabled-themes (quote (avk-darkblue-white)))
 '(custom-safe-themes
   (quote
    ("20e23cba00cf376ea6f20049022241c02a315547fc86df007544852c94ab44cb" "55d31108a7dc4a268a1432cd60a7558824223684afecefa6fae327212c40f8d3" "e87a2bd5abc8448f8676365692e908b709b93f2d3869c42a4371223aab7d9cf8" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "70f5a47eb08fe7a4ccb88e2550d377ce085fedce81cf30c56e3077f95a2909f2" "c3e6b52caa77cb09c049d3c973798bc64b5c43cc437d449eacf35b3e776bf85c" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "fbcdb6b7890d0ec1708fa21ab08eb0cc16a8b7611bb6517b722eba3891dfc9dd" "f9d34593e9dd14b2d798494609aa0fddca618145a5d4b8a1819283bc5b7a2bfd" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "f9574c9ede3f64d57b3aa9b9cef621d54e2e503f4d75d8613cbcc4ca1c962c21" "49e80d2acca9ec3af43ada505dd7297a7c72ea355a090dbbe627fbbe35571d01" "beeb5ac6b65fcccfe434071d4624ff0308b5968bf2f0c01b567d212bcaf66054" "80a2554792f7c6eadbc6abe9e7fe3db4a9710b5e052a5c309e1ca428adb38cd9" default)))
 '(evil-emacs-state-cursor (quote ("#D50000" hbar)) t)
 '(evil-insert-state-cursor (quote ("#D50000" bar)) t)
 '(evil-normal-state-cursor (quote ("#F57F17" box)) t)
 '(evil-visual-state-cursor (quote ("#66BB6A" box)) t)
 '(highlight-indent-guides-auto-enabled nil)
 '(highlight-symbol-colors
   (quote
    ("#F57F17" "#66BB6A" "#0097A7" "#42A5F5" "#7E57C2" "#D84315")))
 '(highlight-symbol-foreground-color "#546E7A")
 '(highlight-tail-colors (quote (("#F8BBD0" . 0) ("#FAFAFA" . 100))))
 '(package-selected-packages
   (quote
    (elpy anaconda-mode ipython-shell-send elpygen jedi-direx btc-ticker avk-emacs-themes autumn-light-theme apropospriate-theme alect-themes point-pos dakrone-light-theme ## zonokai-theme whole-line-or-region wc-goal-mode vlf use-package ubuntu-theme smartparens smart-indent-rigidly smart-forward sexy-monochrome-theme projectile-codesearch parsebib ox-reveal org-tree-slide org-table-sticky-header org-ac oldlace-theme multiple-cursors mark-multiple manage-minor-mode magit-popup liso-theme latex-preview-pane latex-math-preview latex-extra kaolin-theme jedi iy-go-to-char isearch-symbol-at-point isearch-prop isearch-dabbrev isearch+ ido-vertical-mode idle-require hlinum hipster-theme hippie-exp-ext highlight-defined helm-themes helm-projectile helm-perldoc helm-package helm-orgcard helm-open-github helm-flycheck helm-firefox helm-dictionary helm-descbinds helm-company helm-codesearch helm-c-yasnippet helm-bind-key git-commit focus flyparens flymake-shell flylisp flycheck-perl6 f embrace elpa-audit elisp-lint elisp-format el-get el-autoyas eide ego edit-at-point easy-kill-extras doom-themes docbook-snippets discover company-shell company-math company-auctex common-lisp-snippets birds-of-paradise-plus-theme biblio benchmark-init badwolf-theme auto-yasnippet auto-dictionary auto-complete-auctex auto-auto-indent apropos-fn+var anyins ample-zen-theme ample-theme airline-themes ahungry-theme afternoon-theme ace-isearch ac-octave ac-math ac-ispell ac-helm ac-dabbrev ac-capf abyss-theme 2048-game)))
 '(pos-tip-background-color "#ffffffffffff")
 '(pos-tip-foreground-color "#78909C")
 '(red "#ffffff")
 '(tabbar-background-color "#ffffffffffff"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
