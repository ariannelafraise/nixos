{ config, pkgs, ... }:
{
  #hardware.pulseaudio.enable = true;
  # OR
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
    #jack.enable = false;
  };

  services.wireplumber.enable = true;
}
