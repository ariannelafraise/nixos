{ ... }:

{
  programs.bash = {
    enable = true;
    historySize = 30000;
    historyFileSize = 300000;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos";
      "update_system_flake" = "sudo nix flake update /etc/nixos";
      uwu = "neofetch";
    };
  };
}
