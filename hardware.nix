let
  inherit (import <nixpkgs> {}) fetchFromGitHub;
  machine = import ./machine.nix;
  repo = (fetchFromGitHub {
    owner = "NixOS";
    repo  = "nixos-hardware";
    rev    = "03db9669a6fc712e9537201d55639287eb606765";
    sha256 = "1g8kap5qzva58pcwn2xj1cs0k9w9mpbrlk5diaaarlgizp4l2x0z";
  });
in
  (
    if machine.intel
    then [
      "${repo}/common/cpu/intel"
    ]
    else []
  ) ++ (
    if machine.laptop
    then [
      "${repo}/common/pc/laptop"
    ]
    else []
  ) ++ (
    if machine.ssd
    then [
      "${repo}/common/pc/ssd"
    ]
    else []
  )
