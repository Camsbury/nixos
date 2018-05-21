# Emacs packages managed by Nix

{ pkgs ? import <nixpkgs> {} }:

let
  camEmacs = pkgs.emacs;
  emacsWithPackages = (pkgs.emacsPackagesNgGen camEmacs).emacsWithPackages;
in
  emacsWithPackages (epkgs: (with epkgs.melpaStablePackages; [
    counsel
    counsel-projectile
    dash
    evil
    evil-commentary
    evil-magit
    evil-surround
    f
    flycheck
    flycheck-haskell
    flycheck-irony
    flycheck-popup-tip
    ivy
    magit
    nix-mode
    projectile
    restart-emacs
    s
    use-package
  ]) ++ (with epkgs.melpaPackages; [
    command-log-mode
    general
    undo-tree
  ]))
