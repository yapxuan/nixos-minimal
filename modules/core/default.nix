{ inputs, ... }:

{
  imports = [
    ./boot.nix
    ./battery.nix
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
    ./fcitx5.nix
    # ./ollama.nix
    ./virt-manager.nix
    # ./rocm.nix
    ./nixos-cli.nix
    inputs.stylix.nixosModules.stylix
    inputs.nix-flatpak.nixosModules.nix-flatpak
    inputs.nur.modules.nixos.default
    inputs.nixos-cli.nixosModules.nixos-cli
  ];
}
