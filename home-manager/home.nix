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
    x11.enable = true;
    size = 40;
    package = pkgs.capitaine-cursors;
    name = "capitaine-cursors";
  };

  home.stateVersion = "24.05";
}
