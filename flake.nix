{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    helix.url = "github:helix-editor/helix/master";
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      nixpkgs,
      fenix,
      ...
    }:
    {
      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixfmt-rfc-style;
      packages.x86_64-linux.default = fenix.packages.x86_64-linux.complete.toolchain;
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/hardware/hardware-configuration.nix
            ./hosts/laptop.nix
            ./home/home-manager.nix
            ./modules/sound.nix
            ./modules/gnome.nix
            ./modules/groups.nix
            ./modules/boot.nix
            ./modules/systempkgs.nix
            ./modules/networking.nix
            ./modules/locale.nix
          ];
        };
      };
    };
}
