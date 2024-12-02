{ config, pkgs, ... }:

{

  imports = [ 
    ./hyprland/hyprland.nix
    ./hyprland/waybar/waybar.nix
    ./kitty/kitty.nix
    ./bash/bash.nix
    ./git/git.nix
  ];

  home.pointerCursor = {
    gtk.enable = true;
    size = 100;
    package = pkgs.whitesur-cursors;
    name = "Whitesur";
  };

  home.stateVersion = "24.05";
}
