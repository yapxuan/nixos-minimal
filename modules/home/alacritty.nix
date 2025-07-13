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
      window.startup_mode = "Maximized"; # optional
      env.TERM = "xterm-256color";
      scrolling.multiplier = 5;
      selection.save_to_clipboard = true;
    };
  };
}
