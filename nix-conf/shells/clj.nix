let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    name = "clojureShell";
    buildInputs = [
      pkgs.leiningen
      pkgs.openjdk
    ];
  }