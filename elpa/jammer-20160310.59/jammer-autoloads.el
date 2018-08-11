;;; jammer-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "jammer" "jammer.el" (23269 36916 128998 608000))
;;; Generated autoloads from jammer.el

(defvar jammer-mode nil "\
Non-nil if Jammer mode is enabled.
See the `jammer-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `jammer-mode'.")

(custom-autoload 'jammer-mode "jammer" nil)

(autoload 'jammer-mode "jammer" "\
Toggle `jammer-mode'.
This global minor mode allows you to slow down command execution
globally in Emacs.

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; jammer-autoloads.el ends here
