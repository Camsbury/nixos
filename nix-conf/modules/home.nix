{ pkgs, ... }:
let
  unstable = import ../utils/unstable.nix {};
in
{
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;

  # home.packages = [ unstable.hello ];
  home.file = {
    ".Xresources".source = ../../Xresources;
    ".gitconfig".source = ../../gitconfig;
    ".gnupg/gpg-agent.conf".source = ../../gpg-agent.conf;
    ".gnupg/gpg.conf".source = ../../gpg.conf;
    ".offlineimap.py".source = ../../offlineimap.py;
    ".offlineimaprc".source = ../../offlineimaprc;
    ".scripts".source = ../../scripts;
    ".shells".source = ../shells;
    ".tmux.conf".source = ../../tmux.conf;
    ".xmonad".source = ../../xmonad;
    ".zshrc".source = ../../zshrc;
  };
}
