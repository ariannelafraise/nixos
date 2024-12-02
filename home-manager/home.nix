{ config, pkgs, ... }:

{

  imports = [ 
    ./hyprland/hyprland.nix
    ./hyprland/waybar/waybar.nix
    ./kitty/kitty.nix
    ./bash/bash.nix
    ./git/git.nix
  ];

  xsession = {
    enable = true;
    pointerCursor = {
      size = 40;
      package = pkgs.whitesur-cursors;
      name = "Vimix-white-cursors";
    };
  };

  home.stateVersion = "24.05";
}
