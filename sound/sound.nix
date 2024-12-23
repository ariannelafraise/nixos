{ config, pkgs, ... }:
{
  #hardware.pulseaudio.enable = true;
  # OR
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = false;
    pulse.enable = false;
    #jack.enable = false;
  };

  services.wireplumber.enable = true;
}
