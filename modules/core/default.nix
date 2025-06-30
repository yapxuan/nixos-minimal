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
    ./service.nix
    ./user.nix
    ./flatpak.nix
    ./steam.nix
    ./appimage.nix
    ./ollama.nix
    # ./rocm.nix
    inputs.stylix.nixosModules.stylix
    inputs.nix-flatpak.nixosModules.nix-flatpak
  ];
}
