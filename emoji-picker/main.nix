#emoji picker
{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
    pkgs.wofi
    pkgs.dotool
    pkgs.wl-clipboard
    pkgs.bemoji
  ];
  shellHook = ''
    export BEMOJI_DB_LOCATION=./data/bemoji
    export BEMOJI_HISTORY_LOCATION=./data/bemoji
    export BEMOJI_TYPE_CMD="dotool type"
  '';
}
