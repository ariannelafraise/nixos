{ config, pkgs, ... }:

{

  imports = [ 
    ./hyprland/hyprland.nix
    ./hyprland/waybar/waybar.nix
    ./kitty/kitty.nix
    ./bash/bash.nix
    ./git/git.nix
  ];

  gtk = {
    enable = true;
    cursorTheme = {
      package = pkgs.whitesur-cursors;
      name= "uwu";
    };
  };

  home.stateVersion = "24.05";
}
