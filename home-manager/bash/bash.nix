{ ... }:

{
  programs.bash = {
    enable = true;
    historySize = 30000;
    historyFileSize = 300000;
    shellAliases = {
      rebuild = "/etc/nixos/rebuild.sh";
      update-system-flake = "sudo nix flake update /etc/nixos";
      uwu = "neofetch";
      patate-mount = "sudo mount /dev/sda1 /mnt/PATATE";
      patate-umount = "sudo umount /dev/sda1";
    };
  };
}
