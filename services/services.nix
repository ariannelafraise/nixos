{ config, pkgs, ... }:

{
  # List services that you want to enable:
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
}
