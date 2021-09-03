(setq inhibit-startup-message t)
(scroll-bar-mode 1)
(tool-bar-mode 0)
(tooltip-mode 0)
(set-fringe-mode 0)

(set-face-attribute 'default nil :font "DejaVu Sans Mono Book" :height 166)
(load-theme 'wheatgrass)

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))


(require 'use-package)
(setq use-package-always-ensure t)

(use-package counsel
  :bind (("M-x" . counsel-M-x)
	 ("C-x b" . counsel-switch-buffer)
	 ("C-x C-f" . counsel-find-file)))
(setq ivy-initial-inputs-alist nil)

(use-package ivy
  :init (ivy-mode 1))
(use-package ivy-rich
  :init (ivy-rich-mode 1))
(use-package doom-modeline
  :init (doom-modeline-mode 1))

;; M-x all-the-icons-install-fonts
(use-package all-the-icons)

(global-display-line-numbers-mode 1)

(use-package helpful
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap-describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))

;(use-package evil :config (evil-mode 1))
;(use-package evil-magit :after magit)
;(use-package forge)

(use-package magit)
(use-package org)
(use-package haskell-mode)

;(use-package company)
;(use-package lsp-mode)


