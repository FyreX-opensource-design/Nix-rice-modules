#emoji picker
{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
    pkgs.wofi
    pkgs.dotool
    pkgs.wl-clipboard
  ];
}