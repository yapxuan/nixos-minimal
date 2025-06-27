{ pkgs, ... }:

{
  users.users.puiyq = {
    isNormalUser = true;
    ignoreShellProgramCheck = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };
  environment.pathsToLink = [ "/share/zsh" ];
}
