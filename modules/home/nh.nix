{ config, pkgs, ... }:

{
  programs.nh = {
    enable = true;
    clean = {
      enable = true;
      extraArgs = "--keep 2";
      dates = "weekly";
    };
    flake = "/home/puiyq/nixos-config-flake";
  };

}
