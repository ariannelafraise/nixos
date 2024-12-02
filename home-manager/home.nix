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
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
    };
    theme = {
      package = pkgs.adw-gtk3;
      name = "adw-gtk3";
    };
  };

  home.file."vencordtheme" = {
    source = ./vencord/themes;
    target = ".config/vesktop/themes";
    recursive = true;
    force = true;
  };

  home.stateVersion = "24.05";
}
