{ config, lib, pkgs, ... }:
{
  time.timeZone = "America/Toronto";
  time.hardwareClockInLocalTime = true; # For Windows dual-boot
  i18n.defaultLocale = "en_CA.UTF-8";
  console.keyMap = "cf";
}
