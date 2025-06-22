{
  ...
}:

{
  home = {
    username = "puiyq";
    homeDirectory = "/home/puiyq";
    stateVersion = "25.05";
  };

  imports = [
    ../modules/bash.nix
    ../modules/helix.nix
    ../modules/alacritty.nix
    ../modules/dconf.nix
    ../modules/homepkgs.nix
    ../modules/starship.nix
    ../modules/git.nix
  ];

}
