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
    
    discord
    spotify
    obsidian
    brave
    
    brightnessctl
    
    # for ntfs usb key
    fuse
    ntfs3g
  ];
}
