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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-term-color-vector
   [unspecified "#1F1611" "#660000" "#144212" "#EFC232" "#5798AE" "#BE73FD" "#93C1BC" "#E6E1DC"] t)
 '(beacon-color "#F8BBD0")
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "9a155066ec746201156bb39f7518c1828a73d67742e11271e4f24b7b178c4710" "43c1a8090ed19ab3c0b1490ce412f78f157d69a29828aa977dae941b994b4147" "06dbcfac3705aaaa79e1a3264c6fd44ef0cf86ef5ed67930e4007e63a8c1e8ee" "44eec3c3e6e673c0d41b523a67b64c43b6e38f8879a7969f306604dcf908832c" "b274a26505b49a575482495a58601778be3d9f6bfab6a0463398907947c5c929" "3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "42ba25fad91db26bfa0130161412d49804ff27e6a09bf45f1a8268511300d981" "d9aaff4db65a545989c0976c759a44a16439cac7717f4e58cc01efc771d90449" "9f3181dc1fabe5d58bbbda8c48ef7ece59b01bed606cfb868dd147e8b36af97c" "cadc97db0173a0d0bfc40473cab4da462af0ba8d60befd0a4879b582bcbc092d" "0788bfa0a0d0471984de6d367bb2358c49b25e393344d2a531e779b6cec260c5" "551596f9165514c617c99ad6ce13196d6e7caa7035cea92a0e143dbe7b28be0e" "83db918b06f0b1df1153f21c0d47250556c7ffb5b5e6906d21749f41737babb7" "20e23cba00cf376ea6f20049022241c02a315547fc86df007544852c94ab44cb" "55d31108a7dc4a268a1432cd60a7558824223684afecefa6fae327212c40f8d3" "e87a2bd5abc8448f8676365692e908b709b93f2d3869c42a4371223aab7d9cf8" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "70f5a47eb08fe7a4ccb88e2550d377ce085fedce81cf30c56e3077f95a2909f2" "c3e6b52caa77cb09c049d3c973798bc64b5c43cc437d449eacf35b3e776bf85c" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "fbcdb6b7890d0ec1708fa21ab08eb0cc16a8b7611bb6517b722eba3891dfc9dd" "f9d34593e9dd14b2d798494609aa0fddca618145a5d4b8a1819283bc5b7a2bfd" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "f9574c9ede3f64d57b3aa9b9cef621d54e2e503f4d75d8613cbcc4ca1c962c21" "49e80d2acca9ec3af43ada505dd7297a7c72ea355a090dbbe627fbbe35571d01" "beeb5ac6b65fcccfe434071d4624ff0308b5968bf2f0c01b567d212bcaf66054" "80a2554792f7c6eadbc6abe9e7fe3db4a9710b5e052a5c309e1ca428adb38cd9" default)))
 '(evil-emacs-state-cursor (quote ("#D50000" hbar)) t)
 '(evil-insert-state-cursor (quote ("#D50000" bar)) t)
 '(evil-normal-state-cursor (quote ("#F57F17" box)) t)
 '(evil-visual-state-cursor (quote ("#66BB6A" box)) t)
 '(fci-rule-character-color "#452E2E")
 '(highlight-indent-guides-auto-enabled nil)
 '(highlight-symbol-colors
   (quote
    ("#F57F17" "#66BB6A" "#0097A7" "#42A5F5" "#7E57C2" "#D84315")))
 '(highlight-symbol-foreground-color "#546E7A")
 '(highlight-tail-colors (quote (("#F8BBD0" . 0) ("#FAFAFA" . 100))))
 '(hl-paren-colors
   (quote
    ("#B9F" "#B8D" "#B7B" "#B69" "#B57" "#B45" "#B33" "#B11")))
 '(hl-sexp-background-color "#efebe9")
 '(org-time-clocksum-use-effort-durations t)
 '(package-selected-packages
   (quote
    (ox-jira ox-epub tj3-mode solarized-theme leuven-theme arjen-grey-theme cycle-themes jammer ivy yasnippet-snippets yasnippet iedit elpy anaconda-mode ipython-shell-send elpygen jedi-direx btc-ticker avk-emacs-themes autumn-light-theme apropospriate-theme alect-themes point-pos dakrone-light-theme ## zonokai-theme whole-line-or-region wc-goal-mode vlf use-package ubuntu-theme smartparens smart-indent-rigidly smart-forward sexy-monochrome-theme projectile-codesearch parsebib ox-reveal org-tree-slide org-table-sticky-header org-ac oldlace-theme multiple-cursors mark-multiple manage-minor-mode magit-popup liso-theme latex-preview-pane latex-math-preview latex-extra kaolin-theme jedi iy-go-to-char isearch-symbol-at-point isearch-prop isearch-dabbrev isearch+ ido-vertical-mode idle-require hlinum hipster-theme hippie-exp-ext highlight-defined helm-themes helm-projectile helm-perldoc helm-package helm-orgcard helm-open-github helm-flycheck helm-firefox helm-dictionary helm-descbinds helm-company helm-codesearch helm-c-yasnippet helm-bind-key git-commit focus flyparens flymake-shell flylisp flycheck-perl6 f embrace elpa-audit elisp-lint elisp-format el-get el-autoyas eide ego edit-at-point easy-kill-extras doom-themes docbook-snippets discover company-shell company-math company-auctex common-lisp-snippets birds-of-paradise-plus-theme biblio benchmark-init badwolf-theme auto-yasnippet auto-dictionary auto-complete-auctex auto-auto-indent apropos-fn+var anyins ample-zen-theme ample-theme airline-themes ahungry-theme afternoon-theme ace-isearch ac-octave ac-math ac-ispell ac-helm ac-dabbrev ac-capf abyss-theme 2048-game)))
 '(pos-tip-background-color "#ffffffffffff")
 '(pos-tip-foreground-color "#78909C")
 '(red "#ffffff")
 '(tabbar-background-color "#ffffffffffff")
 '(tags-case-fold-search nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
