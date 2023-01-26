;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "michael-a-grammar"
      user-mail-address "5898731+michael-a-grammar@users.noreply.github.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq doom-font (font-spec :family "Hasklug Nerd Font Mono" :size 14)
      doom-unicode-font doom-font
      doom-big-font (font-spec :family "Hasklug Nerd Font Mono" :size 16)
      doom-variable-pitch-font (font-spec :family "Hasklug Nerd Font Mono"))

(setq-default delete-by-moving-to-trash t)
(setq-default window-combination-resize t)
(setq-default x-stretch-cursor t)

(setq auto-save-default t
      password-cache-expiry nil
      truncate-string-ellipsis "…"
      undo-limit 6710886400
      undo-strong-limit 100663296
      undo-outer-limit 1006632960)

(fset 'undo-auto-amalgamate 'ignore)

(setq scroll-error-top-bottom t
      scroll-margin 2
      scroll-step 1
      scroll-conservatively scroll-margin
      scroll-preserve-screen-position t)

(setq mouse-wheel-inhibit-click-time nil
      mouse-wheel-progressive-speed nil)

(setq next-error-recenter (quote (4)))

(setq fast-but-imprecise-scrolling nil
      jit-lock-defer-time 0)

(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

(add-hook 'window-setup-hook #'toggle-frame-fullscreen)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(setq global-subword-mode t
      global-visual-line-mode t)

(setq initial-major-mode 'elixir-mode)

(setq initial-scratch-message "\
#  ❄ Prime Your Potions ❄
defmodule Test
  def test_fn() do
  end
end

Test.test_fn()
")

(custom-set-faces!
  `(flycheck-error :underline (:style line :color ,(doom-color 'red)))
  `(flycheck-warning :underline (:style line :color ,(doom-color 'yellow)))
  `(flyspell-duplicate :underline (:style line :color ,(doom-color 'yellow)))
  `(flyspell-incorrect :underline (:style line :color ,(doom-color 'red)))
  `(flyspell-info :underline (:style line :color ,(doom-color 'green)))
  `(writegood-weasels-face :underline (:style line :color ,(doom-color 'orange))))

(defadvice! prompt-for-buffer (&rest _)
  :after '(evil-window-split evil-window-vsplit)
  (consult-buffer))

(setq deft-directory "~/notes")
(setq +treemacs-git-mode 'deferred)

(after! centaur-tabs
  (setq centaur-tabs-style "alternate"
        centaur-tabs-set-close-button nil
        centaur-tabs-show-count t
        centaur-tabs-show-new-tab-button nil))

(after! company
  (setq company-box-scrollbar nil
        company-idle-delay 1))

(after! deft
  (setq deft-default-extension "md"))

(after! doom-modeline
  (setq doom-modeline-bar-width 3
        doom-modeline-height 25
        ;; doom-modeline-github t
        ;; doom-modeline-indent-info t
        ;; doom-modeline-major-mode-icon t
        ;; doom-modeline-persp-name t
        ;; doom-modeline-persp-icon t
        doom-modeline-vcs-max-length 15
        all-the-icons-scale-factor 1.0
        display-time-24hr-format t
        display-time-day-and-date t
        display-time-load-average-threshold 5)

  (display-time-mode 1)

  (unless (string-match-p "^Power AC" (battery))
    (display-battery-mode 1))
  (global-hide-mode-line-mode))

(after! elixir-mode
  (set-popup-rule! "^\\*Alchemist-IEx" :quit nil :size 0.4)
  (add-hook! 'elixir-mode-hook (modify-syntax-entry ?_ "w"))
  (setq alchemist-hooks-compile-on-save nil
        alchemist-hooks-test-on-save nil
        alchemist-mix-test-default-options '("--include pending"
                                             "--seed 0"
                                             "--exclude integration"
                                             "--max-failures 1")
        lsp-elixir-enable-test-lenses nil
        lsp-elixir-fetch-deps nil
        lsp-elixir-signature-after-complete t
        lsp-elixir-suggest-specs nil)

  ;; (add-hook 'alchemist-iex-mode-hook (lambda ()
                                       (company-mode 0))

(after! lua-mode
  (setq-default tab-width 2))

(after! evil
  (setq evil-escape-key-sequence "jj"
        evil-kill-on-visual-paste nil
        evil-split-window-below t
        evil-want-fine-undo nil
        evil-vsplit-window-right t))

(after! flycheck
  (setq flycheck-elixir-credo-strict t))

(after! lsp-mode
  (setq lsp-file-watch-ignored-directories '(
                                             ".git"
                                             ".github"
                                             ".idea"
                                             "_build"
                                             "build"
                                             "cypress"
                                             "deploy"
                                             "deps"
                                             "docker"
                                             "docs"
                                             "js-libs"
                                             "livedoc"
                                             "load-tests"
                                             "mock-services"
                                             "node_modules"
                                             "public-next"
                                             "rel"
                                             "scripts")))

(after! lsp-ui
  (setq lsp-ui-doc-max-height 100
        lsp-ui-doc-max-width 300
        lsp-headerline-breadcrumb-enable nil
        lsp-headerline-breadcrumb-enable-diagnostics nil
        lsp-headerline-breadcrumb-icons-enable nil
        lsp-headerline-breadcrumb-enable-symbol-numbers t
        lsp-ui-sideline-show-code-actions nil
        lsp-ui-sideline-show-diagnostics nil))

(after! treemacs
  (setq doom-themes-treemacs-enable-variable-pitch nil
        doom-themes-treemacs-theme "doom-colors"
        treemacs-show-hidden-files nil
        treemacs-hide-dot-git-directory t)
  (doom-themes-treemacs-config))

(after! which-key
  (setq which-key-allow-multiple-replacements t
        which-key-idle-delay 0.5
        which-key-idle-secondary-delay 0.05)
        ;; which-key-use-C-h-commands t)
  (pushnew! which-key-replacement-alist
            '((""       . "\\`+?evil[-:]?\\(?:a-\\)?\\(.*\\)") . (nil . "ℰ·\\1"))
            '(("\\`g s" . "\\`evilem--?motion-\\(.*\\)")       . (nil . "ℰ·\\1"))))

(map! :leader
      :desc "Search highlighting" "th" #'evil-ex-nohighlight
      (:prefix-map ("to" . "modeline")
       :desc "Local" "o" #'hide-mode-line-mode
       :desc "Global" "O" #'global-hide-mode-line-mode)
      :desc "Tabs" "tt" #'centaur-tabs-mode)

(map! :after vertico
      :map vertico-map
      "<next>" #'scroll-up-command
      "<prior>" #'scroll-down-command)
