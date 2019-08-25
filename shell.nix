let
  pkgs = import <nixpkgs> {};
  default = import ./default.nix { inherit pkgs; };
in
  pkgs.mkShell {
    inputsFrom = [ default ];
    buildInputs = [
      pkgs.mypy
      pkgs.cacert
      default
    ];
  }
