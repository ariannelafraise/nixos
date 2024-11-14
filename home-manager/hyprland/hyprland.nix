{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      # Monitor(s)
      monitor = "eDP-1,1920x1080@60,0x0,1";

      # Programs
      "$monitorBrightness" = "sh /home/arianne/BashDisplayBrightness/brightness.sh";
      "$terminal" = "kitty";
      "$fileManager" = "dolphin";
      "$menu" = "rofi -show drun -show-icons";

      # Autostart necesarry processes (notifications daemons, status bars, etc.)
      "exec-once" = [
        "swww init &" # Wallpaper daemon
        "swww img ~/Wallpapers/space.png &"
        "nm-applet --indicator &" # Networking manager applet
        "waybar &" # Bar
        "dunst" # Notifications daemon
      ];

      # Environment variables
      env = [
        "XCURSOR_SIZE,24"
        "HYPRCURSOR_SIZE,24"
		"XDG_CURRENT_DESKTOP,Hyprland"
		"XDG_SESSION_TYPE,wayland"
		"XDG_SESSION_DESKTOP,Hyprland"
      ];

      # Look and feel
      general = {
        gaps_in = "5";
        gaps_out = "5";

        border_size = "2";

        "col.active_border" = "rgba(fc2024ee) rgba(20d0fcee) 45deg";
        "col.inactive_border" = "rgba(190000aa)";

		resize_on_border = "true"; # enable drag&click on borders&gaps to resize

		layout = "dwindle"; # or master
      };

      decoration = {
		rounding = "10";

		active_opacity = "1.0";
		inactive_opacity = "0.8";

		drop_shadow = "true";
		shadow_range = "4";
		shadow_render_power = "3";
		"col.shadow" = "rgba(1a1a1aee)";

		blur = {
			enabled = "true";
			size = "6";
			passes = "1";
			vibrancy = "0.1696";
		};
      };

      animations = {
		enabled = "true";

		bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
	
		animation = [
			"windows, 1, 7, myBezier"
			"windowsOut, 1, 7, default, popin 80%"
			"border, 1, 10, default"
			"borderangle, 1, 8, default"
			"fade, 1, 7, default"
			"workspaces, 1, 6, default"
		];
      };

      dwindle = {
        pseudotile = "true";
		preserve_split = "true";
      };

      master = {
        new_status = "master";
      };

      misc = {
		force_default_wallpaper = "0";
        disable_hyprland_logo = "true";
      };

      # Input
      input = {
		kb_layout = "ca";
		kb_variant = "fr";

		follow_mouse = "1";

		sensitivity = "0";

		touchpad = {
			natural_scroll = "true";
		};
      };

      gestures = {
		workspace_swipe = "true";
      };

      # Keybindings
      "$mainMod" = "SUPER";

      bind = [
		"$mainMod, C, exec, $terminal"
		"$mainMod, Q, killactive,"
		"$mainMod, M, exit,"
		"$mainMod, E, exec, $fileManager"
		"$mainMod, V, togglefloating,"
		"$mainMod, R, exec, $menu"
		"$mainMod, P, pseudo," # dwindle
		"$mainMod, J, togglesplit," # dwindle

		# Lockscreen
		"$mainMod, L, exec, hyprlock"

        # Sound +/-
        ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-"
		", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

		# Screenshots
		"SHIFT, Print, exec, grimblast copy output" # Fullscreen // SHIFT+PrntScn
		", Print, exec, grimblast copy area" # Region // PrntSc

		# Full screen focused window
		"$mainMod, F, fullscreen, 1"
		"$mainMod SHIFT, F, fullscreen, 0"

		# Monitor brightness
		",code:232, exec, $monitorBrightness down"
		",code:233, exec, $monitorBrightness up"
		
		# Move focus with arrow keys
		"$mainMod, left, movefocus, l"
		"$mainMod, right, movefocus, r"
		"$mainMod, up, movefocus, u"
		"$mainMod, down, movefocus, d"

		# Switch workspaces with 0-5
		"$mainMod, 1, workspace, 1"
		"$mainMod, 2, workspace, 2"
		"$mainMod, 3, workspace, 3"
		"$mainMod, 4, workspace, 4"
		"$mainMod, 5, workspace, 5"

		# Move active windows to workspace 0-5
		"$mainMod SHIFT, 1, movetoworkspace, 1"
		"$mainMod SHIFT, 2, movetoworkspace, 2"
		"$mainMod SHIFT, 3, movetoworkspace, 3"
		"$mainMod SHIFT, 4, movetoworkspace, 4"
		"$mainMod SHIFT, 5, movetoworkspace, 5"

		# Special workspace
		"$mainMod, S, togglespecialworkspace, magic"
		"$mainMod SHIFT, S, movetoworkspace, special:magic"
      ];

      bindm = [
		"$mainMod, mouse:272, movewindow"
		"$mainMod, mouse:273, resizewindow"
      ];

      # Windows and Workspace rules
      windowrulev2 = "suppressevent maximize, class:.*";
    };
  };
}
