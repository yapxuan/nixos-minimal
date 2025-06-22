{
  pkgs,
  ...
}:

{
  home = {
    username = "puiyq";
    homeDirectory = "/home/puiyq";
  };

  # link the configuration file in current directory to the specified location in home directory
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # link all files in `./scripts` to `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };

  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # set cursor size and dpi for 4k monitor
  # xresources.properties = {
  #   "Xcursor.size" = 16;
  #   "Xft.dpi" = 172;
  # };

  dconf = {
    enable = true;
    settings = {
      "org/gnome/shell" = {
        disable-user-extensions = false;
        enable-extensions = [
          "zen@leotaku"
          "paperwm@jtaala"
          "vitals@corecoding"
          "user-themes@fmuellner"
          "blur-my-shell@aunetx"
        ];
      };
    };
  };

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [

    # social
    zapzap
    discord

    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    fzf # A command-line fuzzy finder
    tree
    fastfetch

    # misc
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor
    nixfmt-rfc-style
    nil # nix language server
    nixd

    # system monitoring
    bottom # rust based system monitoring

    # system tools
    lm_sensors # for `sensors` command
    pciutils # lspci
    usbutils # lsusb
  ];

  # helix configuration
  programs.helix = {
    enable = true;
    settings = {
      theme = "autumn_night_transparent";
      editor.cursor-shape = {
        normal = "block";
        insert = "bar";
        select = "underline";
      };
    };
    languages.language = [
      {
        name = "nix";
        auto-format = true;
        formatter.command = "${pkgs.nixfmt-rfc-style}/bin/nixfmt";
      }
    ];
  };

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "yapxuan";
    userEmail = "puiyongqing@gmail.com";
    extraConfig = {
      credential.helper = "store";
    };
  };

  # starship - an customizable prompt for any shell
  programs.starship = {
    enable = true;
    # custom settings
    settings = {
      add_newline = false;
      aws.disabled = true;
      gcloud.disabled = true;
      line_break.disabled = true;
    };
  };

  # alacritty - a cross-platform, GPU-accelerated terminal emulator
  programs.alacritty = {
    enable = true;
    # custom settings
    settings = {
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

  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
      fastfetch
    '';

    shellAliases = {
      nix = "nom";
    };
  };

  home.stateVersion = "25.05";
}
