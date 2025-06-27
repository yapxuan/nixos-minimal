{ ... }:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting = {
      enable = true;
      highlighters = [
        "main"
        "brackets"
        "pattern"
        "regexp"
        "root"
        "line"
      ];
    };
    initContent = ''
      fastfetch

      # alias certain nix subcommand to nom
      nix() {
        case "$1" in
          shell|develop|build)
            nom "$@"
            ;;
          *)
            command nix "$@"
            ;;
        esac
      }
    '';

    shellAliases = {
      "nix-shell" = "nom-shell";
      "nix-build" = "nom-build";
      cat = "bat";
      man = "batman";
      find = "fd";
      ls = "eza";
      cd = "z";
      grep = "rg";
    };
  };
}
