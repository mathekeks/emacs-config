;;; nodis is a minor mode to eliminate some distractions and make
;;; the overall editing experience a little more pleasant

(defgroup nodis nil "Elkiminate some distractions in emacs."
  :prefix "nodis-")

(defcustom nodis-text-width 100
  "The prefered width of the text block."
  :type 'integer
  :group 'nodis 
  )

(defcustom nodis-fringes-outside-margins t
  "t to draw the fringes at the border of the window, f to draw them at the border of the text area"
  :type 'boolean
  :group 'nodis
  )

(defun nodis-toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
                         (if (equal 'fullboth current-value)
                             (if (boundp 'old-fullscreen) old-fullscreen nil)
                           (progn (setq old-fullscreen current-value)
                                  'fullboth)))))

(defun nodis-adjust-margins ()
  (mapcar #'nodis-adjust-margins-for-window (window-list))
  )

(defun nodis-adjust-margins-for-window (wnd)
  (when (buffer-local-value 'nodis-mode (window-buffer wnd))
    (progn (set-window-margins wnd
			       (max (/ (- (window-total-width wnd)
					  ;; the fringes have to be considered
					  ;; use window-fringes for this
					  ;(if left-fringe-width left-fringe-width 0)
					  ;(if right-fringe-width right-fringe-width 0)
					  ;; TODO this value is in pixel not in columns
					  ;(window-scroll-bar-width wnd)
					  nodis-text-width)
				       2)
				    0)
			       0)
	   (set-window-fringes wnd left-fringe-width right-fringe-width nodis-fringes-outside-margins)
	   )
    )
  )
(defun nodis-reset ()
  (set-window-margins nil 0 0)
  )
(define-minor-mode nodis-mode
  "nodis eliminates some distractions and makes the overall editing experience a little more pleasant"
  :lighter ""
  (if nodis-mode
      (nodis-adjust-margins)
    (nodis-reset)
    )
  )

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))
(add-hook 'window-configuration-change-hook 'nodis-adjust-margins)
(add-hook 'text-mode-hook 'nodis-mode)
(add-hook 'prog-mode-hook 'nodis-mode)
(provide 'nodis-mode)
