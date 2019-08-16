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

Do something like this:

```nix
import (pkgs.fetchFromGitHub { this repo }) { inherit pkgs; }
```

(wip complete example)
