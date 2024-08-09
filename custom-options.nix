{ config, lib, ...}:

with lib;
{
  options.desktop = mkOption {
    type = types.str;
    default = "hyprland";
    description = "A custom option to choose the desktop. Gnome or Hyprland";
  };
}

