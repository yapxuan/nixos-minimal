{ pkgs, inputs, ... }:

{
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  home-manager = {
    userGlobalPkgs = true;
    userUserPackages = true;
    user.puiyq = import ../home;
  };
  home = {
    username = "puiyq";
    homeDirectory = "/home/puiyq";
    stateVersion = "25.05";
    shell.enableShellIntegration = true;
  };
  users.users.puiyq = {
    isNormalUser = true;
    ignoreShellProgramCheck = true;
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };
  environment.pathsToLink = [ "/etc/profiles/per-user/puiyq/share/zsh" ];
}
