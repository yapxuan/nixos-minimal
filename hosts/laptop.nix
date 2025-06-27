{ stylix, inputs, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager
    stylix.nixosModules.stylix
  ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.puiyq = import ../home/users/puiyq.nix;
  };
  system.stateVersion = "25.05";
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}
