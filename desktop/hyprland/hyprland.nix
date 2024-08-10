{ config, pkgs, lib, ... }:
let 
  useHyprland = config.desktop == "hyprland";
in
{
  services.xserver = lib.mkIf useHyprland {
    enable = true;
    displayManager.gdm.enable = true;
  };

  programs.hyprland = lib.mkIf useHyprland {
    enable = true;
  };

  environment.systemPackages = lib.mkIf useHyprland (with pkgs; [
    # policy kit
    lxqt.lxqt-policykit

    # screenshot
    grimblast

    # sound
    pipewire
    pavucontrol # gui

    # terminal
    kitty    

    # wallpaper daemon
    swww

    # notification daemon
    dunst
    libnotify

    # app launcher
    rofi-wayland

    # sound
    wireplumber

    # network manager applet
    networkmanagerapplet
  ]);

  xdg.portal = lib.mkIf useHyprland {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };
}
