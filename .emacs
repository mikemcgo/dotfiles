;;Allows for downloads from MELPA
(require 'package) ;; You might already have this line
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))


(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;;Adding directories
(add-to-list 'load-path "~/.emacs.d/elpa")


(cua-mode t)
(setq tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)

;; Send me straight to *scratch* when loading emacs
(setq inhibit-startup-message t)

;; Color-code stuff
(global-font-lock-mode t)

;; Set Linum-Mode on
(global-linum-mode t)

;; Linum-Mode and add space after #
(setq linum-format "%d ")


;;Completion section
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(require 'yasnippet)
(yas-global-mode 1)

;;c-headers
  (add-hook 'c-mode-hook
            (lambda ()
              (add-to-list 'ac-sources 'ac-source-c-headers)
              (add-to-list 'ac-sources 'ac-source-c-header-symbols t)))
	
