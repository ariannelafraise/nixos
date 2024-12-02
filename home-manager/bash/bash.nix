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
    bashrcExtra = ''
      export PS1="\[\033[38;2;255;105;180m\]\u@\h:\w\$ \[\033[0m\]"
    '';
  };
}
