{ config, pkgs, lib, ... }:
let 
  useHyprland = config.desktop == "hyprland";
in
{
  services = lib.mkIf useHyprland {
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
    };
    #displayManager.sddm = {
     # enable = true;
      #theme = "where_is_my_sddm_theme";
    #};
  };

  programs.hyprland = lib.mkIf useHyprland {
    enable = true;
  };

  environment.systemPackages = lib.mkIf useHyprland (with pkgs; [
    # sddm theme
    #where-is-my-sddm-theme
    
    # lockscreen
    hyprlock
    
    # policy kit
    lxqt.lxqt-policykit

    # screenshot
    grimblast

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
    pipewire

    # network manager applet
    networkmanagerapplet

    # cursor
    whitesur-cursors
  ]);

  xdg.portal = lib.mkIf useHyprland {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };
}
