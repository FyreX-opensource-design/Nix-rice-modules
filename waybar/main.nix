#waybar
{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
        buildInputs = [
                pkgs.waybar
                pkgs.wofi
                pkgs.nwg-drawer
                pkgs.cliphist
                pkgs.wl-clipboard
        ];
        shellHooks = ''
            export DATA_DIR=./data
        '';
}
