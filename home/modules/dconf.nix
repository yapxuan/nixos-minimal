{ ... }:

{
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
}
