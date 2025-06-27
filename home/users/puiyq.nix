{
  pkgs,
  ...
}:

{
  home = {
    username = "puiyq";
    homeDirectory = "/home/puiyq";
    stateVersion = "25.05";
    shell.enableShellIntegration = true;
  };

  imports = [
    ../modules/bash.nix
    ../modules/zsh.nix
    ../modules/helix.nix
    ../modules/alacritty.nix
    ../modules/dconf.nix
    ../modules/homepkgs.nix
    ../modules/starship.nix
    ../modules/git.nix
    ../modules/nh.nix
    ../modules/zoxide.nix
  ];

}
