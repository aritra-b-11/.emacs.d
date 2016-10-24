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
 '(ansi-color-map (ansi-color-make-color-map) t)
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(ansi-term-color-vector
   [unspecified "#1F1611" "#660000" "#144212" "#EFC232" "#5798AE" "#BE73FD" "#93C1BC" "#E6E1DC"] t)
 '(custom-safe-themes
   (quote
    ("3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "ce585b387d84fc4bbb02b8766bfe82607f891e25602ec3550db858e09c10eb7d" "a3b16dd3967bfe198546bdd0a8fd70ff8618d53dc1e453986a460158fa9a5ae7" "cea3ec09c821b7eaf235882e6555c3ffa2fd23de92459751e18f26ad035d2142" "a85e40c7d2df4a5e993742929dfd903899b66a667547f740872797198778d7b5" "41eb3fe4c6b80c7ad156a8c52e9dd6093e8856c7bbf2b92cc3a4108ceb385087" "a62f0662e6aa7b05d0b4493a8e245ab31492765561b08192df61c9d1c7e1ddee" "840db7f67ce92c39deb38f38fbc5a990b8f89b0f47b77b96d98e4bf400ee590a" "5a39d2a29906ab273f7900a2ae843e9aa29ed5d205873e1199af4c9ec921aaab" "aded4ec996e438a5e002439d58f09610b330bbc18f580c83ebaba026bbef6c82" "cbd8e65d2452dfaed789f79c92d230aa8bdf413601b261dbb1291fb88605110c" "78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "d9850d120be9d94dd7ae69053630e89af8767c36b131a3aa7b06f14007a24656" "6f3e8df833cdaaef4ae0fb5cad70f5f74afc834a5eb8eec45efa5dd8f7356f9d" "076a94693c0f6fa99612121c18ccb48bfbd842c05b6b9ed04b6e7e0a0f95a53e" "34ed3e2fa4a1cb2ce7400c7f1a6c8f12931d8021435bad841fdc1192bd1cc7da" "b3bcf1b12ef2a7606c7697d71b934ca0bdd495d52f901e73ce008c4c9825a3aa" "7db4f811c922b96af34ed003edb27f976e19cfaabfeab11a5c54e3e0c27ba149" "80a2554792f7c6eadbc6abe9e7fe3db4a9710b5e052a5c309e1ca428adb38cd9" "d9a0d14596e3d0bdb81f052fa9b99741dcd239af402d42e35f80822e05557cb2" "304c03c9cfcd368b4ab0832357788cd48513fe1bd89b9e531dd47886a83405a1" "1c50040ec3b3480b1fec3a0e912cac1eb011c27dd16d087d61e72054685de345" "b274a26505b49a575482495a58601778be3d9f6bfab6a0463398907947c5c929" "9f3181dc1fabe5d58bbbda8c48ef7ece59b01bed606cfb868dd147e8b36af97c" "06dbcfac3705aaaa79e1a3264c6fd44ef0cf86ef5ed67930e4007e63a8c1e8ee" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "86a731bda96ed5ed69980b4cbafe45614ec3c288da3b773e4585101e7ece40d2" "133222702a3c75d16ea9c50743f66b987a7209fb8b964f2c0938a816a83379a0" "8f0334c430540bf45dbcbc06184a2e8cb01145f0ae1027ce6b1c40876144c0c9" "42ba25fad91db26bfa0130161412d49804ff27e6a09bf45f1a8268511300d981" "fbcdb6b7890d0ec1708fa21ab08eb0cc16a8b7611bb6517b722eba3891dfc9dd" "532769a638787d1196bc22c885e9b85269c3fc650fdecfc45135bb618127034c" "2a5be663818e1e23fd2175cc8dac8a2015dcde6b2e07536712451b14658bbf68" "8e7ca85479dab486e15e0119f2948ba7ffcaa0ef161b3facb8103fb06f93b428" "878e22a7fe00ca4faba87b4f16bc269b8d2be5409d1c513bb7eda025da7c1cf4" "70340909b0f7e75b91e66a02aa3ad61f3106071a1a4e717d5cdabd8087b47ec4" "e87a2bd5abc8448f8676365692e908b709b93f2d3869c42a4371223aab7d9cf8" "f9d34593e9dd14b2d798494609aa0fddca618145a5d4b8a1819283bc5b7a2bfd" "beeb5ac6b65fcccfe434071d4624ff0308b5968bf2f0c01b567d212bcaf66054" "3448e3f5d01b39ce75962328a5310438e4a19e76e4b691c21c8e04ca318a5f62" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "7557aa0d3854c7e910121ba2ef94f4c4e70de7d32ddebb609719f545f7f7be0d" "db210d68e7231e5f2361cd8f6e6bc261f4ea02a72e695a5166eee940e7530a76" "ad950f1b1bf65682e390f3547d479fd35d8c66cafa2b8aa28179d78122faa947" "f9574c9ede3f64d57b3aa9b9cef621d54e2e503f4d75d8613cbcc4ca1c962c21" "44eec3c3e6e673c0d41b523a67b64c43b6e38f8879a7969f306604dcf908832c" default)))
 '(fci-rule-character-color "#452E2E")
 '(fci-rule-color "#452E2E")
 '(global-hl-line-mode t)
 '(ibuffer-deletion-face (quote diredp-deletion-file-name))
 '(ibuffer-marked-face (quote diredp-flag-mark))
 '(notmuch-search-line-faces
   (quote
    (("unread" :foreground "#aeee00")
     ("flagged" :foreground "#0a9dff")
     ("deleted" :foreground "#ff2c4b" :bold t))))
 '(package-selected-packages
   (quote
    (projectile use-package ubuntu-theme eide ego idle-require discover helm-bind-key edit-at-point el-get elpa-audit ace-isearch oldlace-theme org-ac org isearch-prop isearch+ isearch-symbol-at-point isearch-dabbrev apropos-fn+var base16-theme badwolf-theme ahungry-theme whole-line-or-region highlight-defined elisp-lint elisp-format hlinum zonokai-theme wc-goal-mode manage-minor-mode makey magithub magit hipster-theme hippie-exp-ext helm-themes helm-projectile helm-perldoc helm-orgcard helm-open-github helm-package helm-flycheck helm-dictionary helm-descbinds helm-company helm-codesearch helm-c-yasnippet helm-firefox ac-helm helm-bibtexkey helm-bibtex helm vlf smart-indent-rigidly smart-forward sexy-monochrome-theme projectile-codesearch multiple-cursors mark-multiple liso-theme latex-preview-pane latex-math-preview latex-extra jedi ido-vertical-mode focus flyparens flymake-shell flylisp flycheck-perl6 el-autoyas easy-kill-extras doom-themes docbook-snippets company-shell company-math company-auctex common-lisp-snippets birds-of-paradise-plus-theme auto-yasnippet auto-dictionary auto-complete-auctex auto-auto-indent anyins ample-zen-theme ample-theme airline-themes afternoon-theme ace-jump-mode ac-octave ac-math ac-ispell ac-dabbrev ac-capf abyss-theme 2048-game)))
 '(vc-annotate-background "#3b3b3b")
 '(vc-annotate-color-map
   (quote
    ((20 . "#dd5542")
     (40 . "#CC5542")
     (60 . "#fb8512")
     (80 . "#baba36")
     (100 . "#bdbc61")
     (120 . "#7d7c61")
     (140 . "#6abd50")
     (160 . "#6aaf50")
     (180 . "#6aa350")
     (200 . "#6a9550")
     (220 . "#6a8550")
     (240 . "#6a7550")
     (260 . "#9b55c3")
     (280 . "#6CA0A3")
     (300 . "#528fd1")
     (320 . "#5180b3")
     (340 . "#6380b3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; init.el ends here


