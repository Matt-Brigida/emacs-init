;; Matt Brigida's emacs config -- borrowed from all over the web

;;; Load el files

(load "~/private_emacs/email.el")
(load "~/private_emacs/erc_config.el")

;;; Code:

;; disable adverts
(setq inhibit-startup-screen t)

(defun display-startup-echo-area-message ()
    (message "Greetings, Earthling."))

(setq echo-keystrokes 0.5)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("0cd56f8cd78d12fc6ead32915e1c4963ba2039890700458c13e12038ec40f6f5" "9b1c580339183a8661a84f5864a6c363260c80136bd20ac9f00d7e1d662e936a" "721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" "3eb93cd9a0da0f3e86b5d932ac0e3b5f0f50de7a0b805d4eb1f67782e9eb67a4" "2b8dff32b9018d88e24044eb60d8f3829bd6bbeab754e70799b78593af1c3aba" "b181ea0cc32303da7f9227361bb051bbb6c3105bb4f386ca22a06db319b08882" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(fci-rule-color "#073642")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-agenda-files (quote ("~/TODO.org")))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (R . t) (C . t))))
 '(org-confirm-babel-evaluate nil)
 '(org-startup-truncated nil)
 '(package-selected-packages
   (quote
    (dimmer define-word evil-vimish-fold emmet-mode company-web vimish-fold ox-reveal spaceline dashboard page-break-lines airline-themes company gscholar-bibtex elpy disaster chess anaconda-mode ibuffer-projectile indium color-theme-sanityinc-tomorrow rainbow-delimiters dash highlight-parentheses xkcd ample-theme yaml-mode biblio magit-gh-pulls async visual-regexp ein linum-relative solarized-theme slime powerline-evil markdown-mode+ magit lua-mode jazz-theme helm-swoop helm-projectile helm-flyspell gotham-theme folding flycheck ess-smart-underscore discover-my-major darkroom darkmine-theme cyberpunk-theme color-theme-sanityinc-solarized color-theme auto-complete)))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(send-mail-function nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sql-postgres-options (quote ("-P" "pager=off" "-w")))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c85d17")
     (60 . "#be730b")
     (80 . "#b58900")
     (100 . "#a58e00")
     (120 . "#9d9100")
     (140 . "#959300")
     (160 . "#8d9600")
     (180 . "#859900")
     (200 . "#669b32")
     (220 . "#579d4c")
     (240 . "#489e65")
     (260 . "#399f7e")
     (280 . "#2aa198")
     (300 . "#2898af")
     (320 . "#2793ba")
     (340 . "#268fc6")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

 (define-key global-map [f7] 'save-buffer)
 (define-key global-map [f5] 'other-window)
 (define-key global-map [f1] 'Control-X-prefix)
 (define-key global-map [f2] 'shell-command)
 (define-key global-map [f6] 'switch-to-buffer)


;;; emulate vi % command
(defun goto-match-paren (arg)
    "Go to the matching parenthesis if on parenthesis, otherwise insert %.
vi style of % jumping to matching brace."
    (interactive "p")
    (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	  ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	          (t (self-insert-command (or arg 1)))))

;;; bind vi command to Meta o
(global-set-key "\M-o" 'goto-match-paren)


;;; turn off tool and scroll bar
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; Remove the menu bar
(menu-bar-mode -1)

;;; turn off alarm bell
(setq ring-bell-function 'ignore)

;;; be able to install package from MELPA
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;;; basic w3m config from emacswiki
(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;; optional keyboard short-cut
(global-set-key "\C-xm" 'browse-url-at-point)


;;; turn on auto-complete ----
;; (require 'auto-complete-config)
;; (ac-config-default)
;; (ac-flyspell-workaround)

;; Disable Ctrl - z which kills file
(global-set-key "\C-z" nil)

;;Enabling a color theme

(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-initialize)


;;;different color theme depending on whether in terminal or X --- works
(cond ((daemonp) (load-theme 'sanityinc-tomorrow-night t))
      ((window-system) (load-theme 'sanityinc-tomorrow-night t))
      (t (color-theme-clarity)))

;;; using the above now instead -- delete the below soon.
;; (if window-system
    ;; (load-theme 'solarized-dark t)
  ;; (load-theme 'sanityinc-tomorrow-day t)
  ;; (load-theme 'sanityinc-tomorrow-night t)
  ;; (load-theme 'sanityinc-tomorrow-blue t)
  ;; (load-theme 'sanityinc-tomorrow-bright t)
  ;; (load-theme 'sanityinc-tomorrow-eighties t)
    ;; (load-theme 'ample t)
 ;; (load-theme 'ample-flat t)
;; (load-theme 'ample-light t)
;; (load-theme 'jazz t)
;; (load-theme 'sanityinc-solarized-dark t)
;; (load-theme 'darkmine t)
;; (load-theme 'tango-dark t)
;; (load-theme 'gotham t)
;; (color-theme-clarity))


;;(add-hook 'after-init-hook
;;	  (lambda() (load-theme 'solarized-dark t)))

;; tried tango-dark, gotham, darkmine, jazz, solarized-dark (gui) --- ok
;; tried cyberpunk above -- no like
;; (color-theme-tty-dark)	      
;; (color-theme-aalto-light)
;;(color-theme-midnight)
;;(color-theme-cooper-dark)
;;(color-theme-calm-forest)
;;favorites
;;(color-theme-clarity)
;;(color-theme-gray30)
;;(color-theme-black-on-gray)
;;(color-theme-charcoal-black)
;; dont know correct names for following
;;(color-theme-cheap-goldenrod)
;;(color-theme-white-on-black)
;;(color-theme-black)
;;(color-theme-renegade)
; dont like
;;(color-theme-late-night)
;;(color-theme-retro-orange)


;; Setting up and customizing AucTeX

(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

;; turn on autocomplete (need to install package, then uncomment)

;; (require 'auto-complete-auctex)

;; compile ot pdf as default

(setq TeX-PDF-mode t)

;; 'Customary Customization' from EmacsWiki

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

;; to turn on folding mode for LaTeX files
(add-hook 'LaTeX-mode-hook 'folding-mode)

;; ESS Customization

;; turn smart underscore on
(require 'ess-smart-underscore)


;; doesnt seem to work
(require 'ess-rutils)
'(ess-rutils-keys nil)

(setq ess-default-style 'C++)

;;;Comment region, from here: http://stackoverflow.com/questions/2901198/useful-keyboard-shortcuts-and-tips-for-ess-r

(define-key ess-mode-map (kbd "C-M-c") 'comment-region)
(define-key ess-mode-map (kbd "C-M-u") 'uncomment-region)

;; ESS Mode (.R file)
;; dont need this -- can use C-RET
;;(define-key ess-mode-map "\M-q" 'ess-eval-line-and-step)
;;;(define-key ess-mode-map "\C-p" 'ess-eval-function-or-paragraph-and-step)
;;;(define-key ess-mode-map "\C-r" 'ess-eval-region)
(define-key ess-mode-map "\M-n" 'goto-match-paren)

;; turn on folding mode automatically
;; (add-hook 'ess-mode-hook 'folding-mode)
;;;(add-hook 'ess-mode-hook 'linum-mode)	

;; switch between R processes
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
;;; Slightly more debatable
(global-set-key (kbd "C-x C-b") 'ibuffer)


;; Org mode stuff

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(require 'org)

(add-hook 'org-mode-hook 'flyspell-mode)
;;(add-hook 'org-mode-hook 'color-theme-midnight)

(transient-mark-mode 1)


;;added to try and get org mode to call R code
  ;; below not recognized
;;(org-babel-do-load-languages 
 ;;'org-babel-load-languages 
 ;;'((R . t)))
   ;; dont know path
;;(add-to-list 'load-path "~/.emacs.d/src
(require 'ess-site)



;; for code folding -- from emacs wiki
(load "folding" 'nomessage 'noerror)
;; commented after installing 24.5 -- moving systems
(folding-mode-add-find-file-hook)

;; for R
(folding-add-to-marks-list 'ess-mode "#{{{" "#}}}" nil t)

;; for markdown
;; (folding-add-to-marks-list 'markdown-mode "<!---{{{" "}}}-->" nil t)
(add-hook 'markdown-mode-hook 'folding-mode)

(add-hook 'markdown-mode-hook 'flyspell-mode)

;; ;; for latex
(folding-add-to-marks-list 'latex-mode "%{{{" "%}}}" nil t)

;; ;; for latex
(folding-add-to-marks-list 'javascript-mode "//{" "//}" nil t)

;; ;; load folding mode automatically
;; (folding-mode 1)

;; EasyPG
(require 'epa-file)
(epa-file-enable)


;; Mutt support: <from archwiki> [changed from mail-mode to message-mode]
(setq auto-mode-alist (append '(("/tmp/mutt.*" . message-mode)) auto-mode-alist))
;;My attempt to get flyspell-mode on in mail mode
(add-hook 'message-mode-hook 'flyspell-mode)
;(add-hook 'message-mode-hook (lambda() (load-theme 'solarized-dark t)))

;; put all backups in one directory
;; from emacswiki here: http://www.emacswiki.org/emacs/BackupDirectory
;; accessed on 8/10/2014
(setq backup-directory-alist
     `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
     `((".*" ,temporary-file-directory t)))

;; purge backup files not accessed in a week:
(message "Deleting old backup files...")
(let ((week (* 60 60 24 7))
      (current (float-time (current-time))))
  (dolist (file (directory-files temporary-file-directory t))
    (when (and (backup-file-name-p file)
               (> (- current (float-time (fifth (file-attributes file))))
                  week))
      (message "%s" file)
      (delete-file file))))

;; use windmove to move around windows; ignore error wrapper is so we dont see an error if there is no window there,
(defun ignore-error-wrapper (fn)
  "Funtion return new function that ignore errors.
   The function wraps a function with `ignore-errors' macro."
  (lexical-let ((fn fn))
    (lambda ()
      (interactive)
      (ignore-errors
        (funcall fn)))))
(global-set-key [C-left] (ignore-error-wrapper 'windmove-left))
(global-set-key [C-right] (ignore-error-wrapper 'windmove-right))
(global-set-key [C-up] (ignore-error-wrapper 'windmove-up))
(global-set-key [C-down] (ignore-error-wrapper 'windmove-down))

;; include diary in org mode agenda
(setq org-agenda-include-diary t)

;;; polymode ----
(setq load-path
      (append '("~/.emacs.d/polymode/polymode/"  "~/.emacs.d/polymode/polymode/modes")
              load-path))

;; do i need or is it automoatic fron installing through melpa?
(require 'poly-R)
(require 'poly-markdown)

;;; MARKDOWN
(add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))

;;; R modes
(add-to-list 'auto-mode-alist '("\\.Snw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rnw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))

;;; to get equations highlighted in markdown mode
(add-hook 'markdown-mode-hook 'markdown-enable-math)

;;; copy line function

(defun copy-line (arg)
  "Copy lines (as many as prefix argument) in the kill ring.
      Ease of use features:
      - Move to start of next line.
      - Appends the copy on sequential calls.
      - Use newline as last char even on the last line of the buffer.
      - If region is active, copy its lines."
  (interactive "p")
  (let ((beg (line-beginning-position))
	      (end (line-end-position arg)))
	  (when mark-active
	    (if (> (point) (mark))
		(setq beg (save-excursion (goto-char (mark)) (line-beginning-position)))
	      (setq end (save-excursion (goto-char (mark)) (line-end-position)))))
	  (if (eq last-command 'copy-line)
	      (kill-append (buffer-substring beg end) (< end beg))
	    (kill-ring-save beg end)))
	(kill-append "\n" nil)
	(beginning-of-line (or (and arg (1+ arg)) 2))
	(if (and arg (not (= 1 arg))) (message "%d lines copied" arg)))

;;; optional key binding
(global-set-key "\M-q" 'copy-line)
(put 'narrow-to-region 'disabled nil)

;;;have postgres (sql-postgres) look in ~/.pgpass for the password

(put 'set-goal-column 'disabled nil)

;; for helm ----

;; [Facultative] Only if you have installed async.
(add-to-list 'load-path "~/.emacs.d/async_dir")

(add-to-list 'load-path "~/.emacs.d/helm_dir")
(require 'helm-config)

;;; turn on helm
(helm-mode 1)

;; from here: http://tuhdo.github.io/helm-intro.html
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(helm-autoresize-mode t)

(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
;; for correcting spelling
;; works from here: http://stackoverflow.com/questions/16084022/emacs-flyspell-deactivate-c-key-binding
(eval-after-load "flyspell"
  '(define-key flyspell-mode-map (kbd "C-;") 'helm-flyspell-correct))

;;; turn on powerline

(require 'powerline)

;; (powerline-default-theme)
;; (powerline-center-theme)

(require 'airline-themes)
;; (load-theme 'airline-dark)
;; (load-theme' airline-base16-gui-dark)
;; (load-theme 'airline-doom-molokai)
;; (load-theme 'airline-papercolor)
;; (load-theme 'airline-solarized-gui)
(load-theme 'airline-solarized-alternate-gui)

;; powerline evil
;; (require 'powerline-evil)
;; (powerline-evil-center-color-theme)
;; (powerline-center-evil-theme)

;;;; EVIL Section ;;;;;;;;;;;;;

;; turn on evil Mode

;; (require 'evil)
;; (evil-mode 1)

;; (evil-set-initial-state 'dired-mode 'normal) 
;; (evil-set-initial-state 'ibuffer-mode 'normal)
;; (evil-set-initial-state 'magit-mode 'normal)
;; (evil-set-initial-state 'calendar-mode 'emacs) 

;; (define-key evil-insert-state-map "\C-a" 'move-beginning-of-line)
;; (define-key evil-normal-state-map "\C-a" 'move-beginning-of-line)
;; (define-key evil-normal-state-map "\C-e" 'evil-end-of-line)
;; (define-key evil-insert-state-map "\C-e" 'end-of-line)
;; (define-key evil-visual-state-map "\C-e" 'evil-end-of-line)
;; (define-key evil-motion-state-map "\C-e" 'evil-end-of-line)

;; (require 'key-chord)
;; (key-chord-mode 1)
;; (key-chord-define evil-insert-state-map "fd" 'evil-normal-state)

;; ;;make it evil
;; (evil-vimish-fold-mode 1)

;; Dont Uncomment Also ---
;; (custom-theme-set-faces 'solarized-dark '(powerline-evil-normal-face
;;                                     ((t (:foreground "blue")))))
;; (custom-theme-set-faces 'solarized-dark '(powerline-evil-insert-face
;;                                     ((t (:foreground "green")))))
;; (custom-theme-set-faces 'solarized-dark '(powerline-evil-visual-face
;;                                     ((t (:foreground "yellow")))))
;; ---

;;;; end EVIL section ;;;;;;;;;;

;;; set linum mode on globally
(global-linum-mode t)
(eval-after-load "linum"
  (set-face-attribute 'linum nil :height 100))


;; turn on projectile and helm-projectile
(projectile-global-mode)
(require 'helm-projectile)
(helm-projectile-on)

;; location of sbcl for slime
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))


;;; Helm swoop config from github: https://github.com/ShingoFukuyama/helm-swoop

;; Locate the helm-swoop folder to your path
(add-to-list 'load-path "~/.emacs.d/elisp/helm-swoop")
(require 'helm-swoop)

;; Change the keybinds to whatever you like :)
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)

;; When doing isearch, hand the word over to helm-swoop
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
;; From helm-swoop to helm-multi-swoop-all
(define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)
;; When doing evil-search, hand the word over to helm-swoop
;; (define-key evil-motion-state-map (kbd "M-i") 'helm-swoop-from-evil-search)

;; Instead of helm-multi-swoop-all, you can also use helm-multi-swoop-current-mode
(define-key helm-swoop-map (kbd "M-m") 'helm-multi-swoop-current-mode-from-helm-swoop)

;; Move up and down like isearch
(define-key helm-swoop-map (kbd "C-r") 'helm-previous-line)
(define-key helm-swoop-map (kbd "C-s") 'helm-next-line)
(define-key helm-multi-swoop-map (kbd "C-r") 'helm-previous-line)
(define-key helm-multi-swoop-map (kbd "C-s") 'helm-next-line)

;; Save buffer when helm-multi-swoop-edit complete
(setq helm-multi-swoop-edit-save t)

;; If this value is t, split window inside the current window
(setq helm-swoop-split-with-multiple-windows nil)

;; Split direcion. 'split-window-vertically or 'split-window-horizontally
(setq helm-swoop-split-direction 'split-window-vertically)

;; If nil, you can slightly boost invoke speed in exchange for text color
(setq helm-swoop-speed-or-color nil)

;; ;; Go to the opposite side of line from the end or beginning of line
(setq helm-swoop-move-to-line-cycle t)

;; Optional face for line numbers
;; Face name is `helm-swoop-line-number-face`
(setq helm-swoop-use-line-number-face t)

;; If you prefer fuzzy matching
(setq helm-swoop-use-fuzzy-match t)

;; starting flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; only prompt delete once
(setq dired-recursive-deletes 'always)

;; relative line Mode
(require 'linum-relative)
(linum-relative-on)
(linum-relative-in-helm-p)

;; for emacs notebook, ein
(require 'ein)

;; for visual-regexp
(require 'visual-regexp)
(define-key global-map (kbd "C-c r") 'vr/replace)
(define-key global-map (kbd "C-c q") 'vr/query-replace)

;; for magit pull requests -- asks for username/password, commented for now.
;; (require 'magit-gh-pulls)
;; (add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)


;; parentheses highlighting

(require 'highlight-parentheses)

(add-hook 'ess-mode-hook 'highlight-parentheses-mode)

(add-hook 'LaTeX-mode-hook 'highlight-parentheses-mode)

;;always run electric pair mode

(electric-pair-mode t)
;; (require 'paren)
;; (set-face-background 'show-paren-match (face-background 'default))
;; (set-face-foreground 'show-paren-match "#859900")
;; (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
;; (show-paren-mode t)

(require 'rainbow-delimiters)

(add-hook 'ess-mode-hook 'rainbow-delimiters-mode)
(add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'python-mode-hook 'rainbow-delimiters-mode)
(add-hook 'C-mode-hook 'rainbow-delimiters-mode)


;; build list of recently opened files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; highlight line like spacemacs
(when window-system (global-hl-line-mode 1))

(setq gui-select-enable-clipboard t)

;; push clipboard to kill ring
(setq save-interprogram-paste-before-kill t)

;; push current yank to clipboard

(setq yank-pop-change-selection t)

;;automatically group ibuffers by projectile repo---turned this off
;; (add-hook 'ibuffer-hook
;;     (lambda ()
;;       (ibuffer-projectile-set-filter-groups)
;;       (unless (eq ibuffer-sorting-mode 'alphabetic)
;;         (ibuffer-do-sort-by-alphabetic))))

;;; for disaster (dissassemble C/C++)

(add-to-list 'load-path "~/.emacs.d/elpa/disaster-20170507.1626")
(require 'disaster)
(define-key c-mode-base-map (kbd "C-c d") 'disaster)

;;; for elpy
(package-initialize)
(elpy-enable)

;; turn on company mode in all buffers
(add-hook 'after-init-hook 'global-company-mode)

;; for emacs dashboard
(require 'page-break-lines)
;; dashboard config
(require 'dashboard)
(dashboard-setup-startup-hook)
;; Or if you use use-package

;; Set the title
;; (defun now ()
;;   "Insert string for the current time formatted like '2:34 PM'."
;;   (interactive)                 ; permit invocation in minibuffer
;;   (insert (format-time-string "%D %-I:%M %p")))
(setq dashboard-banner-logo-title "Greetings Earthling!")
;; Set the banner
;; (setq dashboard-startup-banner "~/website_background.png")
(setq dashboard-startup-banner 'logo)
;; Value can be
;; 'official which displays the official emacs logo
;; 'logo which displays an alternative emacs logo
;; 1, 2 or 3 which displays one of the text banners
;; "path/to/your/image.png which displays whatever image you would prefer

(setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        ;; (agenda . 5)
                        (registers . 5)))

;; spacemacs modeline
(require 'spaceline-config)
(spaceline-spacemacs-theme)
(put 'upcase-region 'disabled nil)
;; (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)

;;; turning on vim fold
(require 'vimish-fold)
(vimish-fold-global-mode 1)
;; add keychord for fold

;;;stuff for web development

;; for company-web
(add-to-list 'company-backends 'company-web-html)
(add-to-list 'company-backends 'company-web-jade)
(add-to-list 'company-backends 'company-web-slim)

;; emmet-mode

(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)

;;; map C-z to query replace -----
(global-set-key (kbd "C-z") 'query-replace)

;;; dimmer
(dimmer-mode)
(setq dimmer-fraction 0.2)
