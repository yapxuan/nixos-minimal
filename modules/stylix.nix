{ stylix, pkgs, ... }:

{
  # imports = [ stylix.nixosModules.stylix ];

  stylix = {
    enable = true;
    polarity = "dark";
    opacity.terminal = 0.9;
    image = ../resources/wallpaper/AnimeGirlNightSky.jpg;
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.meslo-lg;
        name = "MesloLGS NF";
      };
      sansSerif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      serif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      sizes = {
        applications = 12;
        terminal = 15;
        desktop = 11;
        popups = 12;
      };
    };
  };
}
