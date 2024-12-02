{ ... }:

{
  programs.bash = {
    enable = true;
    historySize = 30000;
    historyFileSize = 300000;
    shellAliases = {
      rebuild = "/etc/nixos/rebuild.sh";
      update-system-flake = "sudo nix flake update /etc/nixos";
      rawr = "hyfetch";
      patate-mount = "sudo mount /dev/sda1 /mnt/PATATE";
      patate-umount = "sudo umount /dev/sda1";
    };
    sessionVariables = {
      PS1 = "\\[\\033[38;5;13m\\]\\u\\[\\033[0m\\]\\[\\033[38;5;129m\\]@\\h:\\w\\$\\[\\033[0m\\] ";
    };
  };
}
