{ config, pkgs, ... }:
# Don't forget to set a password with 'passwd'!
{
  users.users.arianne = {
    isNormalUser = true;
    description = "Arianne";
    extraGroups = ["networkmanager" "wheel"];
    home = "/home/arianne";
  };
}
