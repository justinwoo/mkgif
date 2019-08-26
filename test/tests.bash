#!/usr/bin/env nix-shell
#!nix-shell ../shell.nix -i bash

mkgif
file test/touroku.m4v
mkgif test/touroku.m4v
file test/touroku.gif
mkgif test/touroku.m4v test/touroku.gif 200
file test/touroku.gif
