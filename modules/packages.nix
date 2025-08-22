{
  pkgs,
  ...
}:

{
  nixpkgs.config.allowUnfree = true;
  nix.package = pkgs.nixVersions.git;
  environment.shellInit = ''
    export NH_NO_CHECKS=1;
  '';
  environment.systemPackages = with pkgs; [
    git
    vim
    wget
    curl
    xterm
    nh
    cachix
    bottom
    firefox
  ];
}
