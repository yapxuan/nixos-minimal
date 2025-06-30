{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    helix.url = "github:helix-editor/helix/master";
    zed.url = "github:zed-industries/zed/main";
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-flatpak.url = "github:gmodena/nix-flatpak";
    nh.url = "github:nix-community/nh";
  };

  outputs =
    inputs@{
      nixpkgs,
      nh,
      nix-flatpak,
      fenix,
      stylix,
      zed,
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
            ./hosts/zenbook
          ];
        };
      };
    };
}
