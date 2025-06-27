
{ inputs, ... }:

{
  imports = [
    ./boot.nix
    ./gnome.nix
    ./locale.nix
    ./networking.nix
    ./sound.nix
    ./stylix.nix
    ./systempkgs.nix
    ./system.nix
    ./user.nix
    inputs.stylix.nixosModules.stylix
  ]
}
