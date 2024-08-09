{ config, pkgs, lib, ... }:
let
  useGnome = config.desktop == "gnome";
in
{
  services.xserver = lib.mkIf useGnome {
    enable = true;
    xkb = {
      layout = "ca";
      variant = "fr";
    };
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
}
