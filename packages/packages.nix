{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Docker
  virtualisation.docker.enable = true;

  environment.systemPackages = with pkgs; [
    hyfetch
    tree
    htop
    git
    neovim
    bat # cat alternative
    wget
    
    ripgrep
    xclip
    nvchad

    discord
    spotify
    obsidian
    brave
    
    brightnessctl
    
    unzip
    
    # for ntfs usb key
    fuse
    ntfs3g

    # rootme
    wireshark
    exiftool
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
}
