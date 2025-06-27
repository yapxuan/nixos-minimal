{ ... }:

{

  # alacritty - a cross-platform, GPU-accelerated terminal emulator
  programs.alacritty = {
    enable = true;
    # custom settings
    settings = {
      terminal.shell = {
        program = "/etc/profiles/per-user/puiyq/bin/zsh";
        args = [
          "-c"
          "zellij || exec zsh"
        ];

      };
      env.TERM = "xterm-256color";
      font.size = 12;
      colors = {
        primary = {
          background = "#181818";
          foreground = "#d8d8d8";
        };
        draw_bold_text_with_bright_colors = true;
      };
      scrolling.multiplier = 5;
      selection.save_to_clipboard = true;
    };
  };
}
