{ config, pkgs, ... }:

{
  networking.hostName = "kitaria";
  networking.networkmanager.enable = true;
}
