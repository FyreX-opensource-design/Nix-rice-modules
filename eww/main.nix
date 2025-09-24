#eww
{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
    pkgs.eww
  ];
  shellHook = ''
    export XDG_CONFIG_HOME=./data
  '';
}
