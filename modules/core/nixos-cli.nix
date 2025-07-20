{ config, pkgs, ... }:

{
  services.nixos-cli = {
    enable = true;
    config = {
      # Whatever settings desired.
      use_nvd = true;
      apply.use_nom = true;
      config_location = "/home/puiyq/nixos-config-flake";

    };
  };
}
