# mkgif

because ffmpeg commands are too annoying to remember, and bash scripts are annoying to manage.

```
mkgif: convert some input into a gif using ffmpeg.

usage: mkgif input.mkv output.gif [optional: scale number, default 1000]

examples:
  mkgif input.mkv output.gif
  mkgif input.mkv output.gif 500
```

## Installation

```nix
nix-env -i -f ./default.nix
```

Or do something like this:

```nix
{ pkgs ? import <nixpkgs> {} }:

import (pkgs.fetchFromGitHub {
  owner = "justinwoo";
  repo = "mkgif";
  rev = "046fe40b9b1fb7594e3b9f6db2207d623056ebb8";
  sha256 = "1s9gplx7fsb3gmipwzcx0mg5sdc6ylhsjzy0lcw80wzmfd4sd4dx";
}) {
  inherit pkgs;
}
```
