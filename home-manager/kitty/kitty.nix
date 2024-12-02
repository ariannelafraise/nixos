{ ... }:

{
  programs.kitty = {
    enable = true; 
    settings = {
      default = ''
        {
          	font_family FiraCode Nerd Font Mono
	        scrollback_size 10000
          	background_opacity 0.6
          	background #3f3333
	        foreground #d9e6f2
	        cursor #d9e6f2
	        cursor_shape beam
	        selection_background #a2c2f2
	        color0 #000000
	        color8 #323232
	        color1 #c37272
	        color9 #dbaaaa
	        color2 #72c373
	        color10 #aadbaa
	        color3 #c2c372
	        color11 #dadbaa
	        color4 #7372c3
	        color12 #aaaadb
	        color5 #c372c2
	        color13 #dbaada
	        color6 #72c2c3
	        color14 #aadadb
	        color7 #d9d9d9
	        color15 #ffffff
	        selection_foreground #29262f
        }
      '';
    };
  };
}
