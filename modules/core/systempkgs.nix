{ pkgs, ... }:

{
  # programs.firefox.enable = true;
  nixpkgs.config.allowUnfree = true;
  # nixpkgs.overlays = [ inputs.fenix.overlays.default ];
  environment.systemPackages = with pkgs; [
    neovim
    wget
    curl
    just
    fzf
    yazi
    vlc
    mesa
    # inputs.helix.packages."${pkgs.system}".helix
    # (fenix.complete.withComponents [
    #   "cargo"
    #   "clippy"
    #   "rust-src"
    #   "rustc"
    #   "rustfmt"
    # ])
    # rust-analyzer-nightly
  ];
}
