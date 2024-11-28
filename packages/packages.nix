{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Docker
  virtualisation.docker.enable = true;

  environment.systemPackages = with pkgs; [
    # terminal
    hyfetch
    tree
    htop
    bat # cat alternative
    wget

    # code
    vscode
    git
    vim

    # apps
    discord
    spotify
    obsidian
    brave
    
    # utility
    brightnessctl
    ripgrep
    xclip
    unzip
    # for ntfs usb key
    fuse
    ntfs3g

    # cybersecurity
    #gobuster
    #wireshark
    #burpsuite
    #exiftool
    #nmap
    #john # john the ripper

    # bluetooth
    #bluez
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
}
