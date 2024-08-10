{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    neofetch
    tree
    htop
    git
    vim
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
    
    # for ntfs usb key
    fuse
    ntfs3g
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
}
