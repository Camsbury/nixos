{ config, pkgs, ... }:

{

  nixpkgs.config.permittedInsecurePackages = [
    "xpdf-4.02"
  ];

  environment.systemPackages = with pkgs; [
    ack
    ag
    anki
    audacity
    autojump
    bat
    babashka
    binutils
    brave
    check-low-battery
    chromium
    cmacs
    curl
    direnv
    discord
    disper
    dmenu
    docker
    docker_compose
    (emacsPackagesNg.emacsWithPackages (import ./emacs.nix))
    entr
    espeak # tts
    exa
    fd
    feh # wallpapers
    firefox
    fzf
    gdb
    ghostscript # for viewing pdfs
    gimp
    git
    gitAndTools.git-extras
    gitAndTools.hub
    glibc
    gnumake
    gnupg
    gnuplot
    gnutls
    google-cloud-sdk
    htop
    httpie
    inotify-tools
    jq
    keybase
    keybase-gui
    keychain
    killall
    kubectl
    libnotify
    loc
    lsof
    man-pages
    nix-index
    nixfmt
    nodePackages.prettier
    dunst
    oh-my-zsh
    openssh
    openssl
    openvpn
    peek
    postgresql_11
    redshift
    ripgrep
    shellcheck
    signal-desktop
    slack
    sloccount
    slock
    sourceHighlight
    spotify # non-free
    sqlite
    tdesktop # telegram
    teensy-loader-cli # flash ergodox firmware (use zshrc alias for help)
    tldr
    tmux
    transmission
    tree
    # typora # markdown
    udisks # manage drives
    unzip
    veracrypt
    vim
    vlc
    wget
    xclip # copy paste stuff
    xkb-switch
    xorg.libXft # XMonad
    xorg.xbacklight
    xorg.xmodmap
    xpdf
    xss-lock
    zip
    zsh
  ];
}
