#gtklock
{ pkgs ? import <nixpkgs> {} }:
let
  sai = pkgs.sway-audio-idle-inhibit;
in
{
  shell = pkgs.mkShell {
    buildInputs = [
      pkgs.gtklock
      pkgs.bash
      pkgs.swayidle
      sai
      pkgs.gtklock-powerbar-module
    ];
  };

  swayAudioIdleBin = "${sai}/bin/sway-audio-idle-inhibit";
}