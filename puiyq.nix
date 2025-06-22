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
    ./bash.nix
    ./helix.nix
    ./alacritty.nix
    ./dconf.nix
    ./homepkgs.nix
    ./starship.nix
    ./git.nix
  ];

}
