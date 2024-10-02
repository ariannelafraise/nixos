{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = [
      {
        layer = "top";
        height = 44;
        spacing = 4;
        margin = "5";

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
          #"cpu"
          #"memory"
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
          format = "󰁹  {capacity}%";
          "format-full" = "󱈏  {capacity}%";
          "format-charging" = "󰂄  {capacity}%";
          "format-plugged" = "󰂄  {capacity}%";
          "format-alt" = "󰁹  {time}";
        };

        network = {
          "format-wifi" = "󰤨    {essid} ({signalStrength}%)";
          "format-ethernet" = "󰁹    {ipaddr}/{cidr}";
          "tooltip-format" = "󰤨    {ifname} via {gwaddr}";
          "format-linked" = "󰤨    {ifname} (No IP)";
          "format-disconnected" = "󰤭    ey branche moe";
          "format-alt" = "󰤨    {ifname}: {ipaddr}/{cidr}";
        };
        
        wireplumber = {
          "format" = "     {volume}%";
          "format-muted" = "     muted";
        };
      }
    ];
  };
}
