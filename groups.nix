{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  users.users.puiyq = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };
}
