{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    # For style: add style = [{ <CONFIG> }];
    style = ./style.css;
    settings = [
      {
        layer = "top";
        height = 60;
        spacing = 4;

        modules-left = [
          "hyprland/workspaces"
          "hyprland/window"
        ];

        modules-center = [
          "clock"
        ];

        modules-right = [
         # "pulseaudio"
	        "wireplumber"
          "network"
          "cpu"
          "memory"
          "battery"
          "tray"
        ];

        clock = {
          "tooltip-format" = "<big>{:%Y %B}</big>";
          "format-alt" = "{:%Y-%m-%d}";
        };

        tray = {
          spacing = 10;
        };

        cpu = {
          format = "cpu {usage}%";
          tooltip = false;
        };

        memory = {
          format = "memory {}%";
        };

        battery = {
          states = {
            warning = 30;
            critical = 15;
          };
          format = "bat {capacity}%";
          "format-full" = "bat {capacity}%";
          "format-charging" = "bat {capacity}%";
          "format-plugged" = "bat {capacity}%";
          "format-alt" = "bat {time}";
        };

        network = {
          "format-wifi" = "{essid} ({signalStrength}%)";
          "format-ethernet" = "{ipaddr}/{cidr}";
          "tooltip-format" = "{ifname} via {gwaddr}";
          "format-linked" = "{ifname} (No IP)";
          "format-disconnected" = "Disconnected ⚠";
          "format-alt" = "{ifname}: {ipaddr}/{cidr}";
        };
        
        wireplumber = {
          "format" = "sound {volume}%";
          "format-muted" = "sound muted";
        };
        #pulseaudio = {
         # format = "{volume}% {icon} {format_source}";
         # "format-bluetooth" = "{volume}% {icon} {format_source}";
         # "format-bluetooth-muted" = " {icon} {format_source}";
         # "format-muted" = " {format_source}";
         # "format-source" = "{volume}% ";
         # "format-source-muted" = "";
         # "format-icons" = {
         #   headphone = "";
          #  "hands-free" = "";
           # headset = "";
           # phone = "";
           # portable = "";
           # car = "";
           # default = [ "" "" "" ];
          #};
         # "on-click" = "pavucontrol";
        #};
      }
    ];
  };
}
