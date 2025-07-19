{ config, pkgs, ... }:

{
  services.nixos-cli = {
    enable = true;
    config = {
      # Whatever settings desired.
      use_nvd = true;
      apply.use_nom = true;

    };
  };
}
