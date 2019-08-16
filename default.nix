{ pkgs ? import <nixpkgs> {}
, ffmpeg ? pkgs.ffmpeg
, python3 ? pkgs.python3
}:

pkgs.stdenv.mkDerivation {
  name = "mkgif";
  description = "make gifs from various inputs using ffmpeg.";
  buildInputs = [
    pkgs.makeWrapper
  ];
  src = ./src;
  installPhase = ''
    mkdir -p $out/bin
    cp "$src/mkgif" $out/bin
    wrapProgram $out/bin/mkgif \
      --prefix PATH : ${pkgs.lib.makeBinPath [
        python3
        ffmpeg
      ]}
  '';
}
