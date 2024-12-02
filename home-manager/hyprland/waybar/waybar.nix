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
        margin = "0";

        modules-left = [
          "hyprland/workspaces"
          "hyprland/window"
        ];

        modules-center = [
          "battery"
        ];

        modules-right = [
          "network"
          "wireplumber"
          #"cpu"
          #"memory"
          "clock"
          "tray"
        ];

        clock = {
          #"tooltip-format" = "<big>{:%B %Y}</big>";
          "format-alt" = "{:%d/%m/%Y}";
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
