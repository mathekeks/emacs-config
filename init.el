;; init.el for this setup. Must use Emacs 24


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(org-babel-load-file
(expand-file-name "emacs-init.org"
                 user-emacs-directory))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0d52ed72ff07be55138ed98d6a8a461f67db7932cee314964fccaa40c1ad6be3" "59ed0fd7ecc61fb32960c56f5b1c5d7f21f2d4567c48b7701f7de3ed9ef0ef51" "c5fce1319d0407d23d7b52de0d961f57bafdee287017c09b1cf38a7a4d5e719f" default)))
 '(package-selected-packages
   (quote
    (adoc-mode go-mode go-scratch projectile markdown-mode evil-magit evil-leader use-package))))
