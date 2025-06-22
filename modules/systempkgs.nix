{
  pkgs,
  inputs,
  ...
}:

{
  programs.firefox.enable = true;
  nixpkgs.config.allowUnfree = true;
  nixpkgs.overlays = [ inputs.fenix.overlays.default ];
  environment.systemPackages = with pkgs; [
    neovim
    wget
    git
    curl
    just
    fzf
    alacritty
    yazi
    nerd-fonts.jetbrains-mono
    btrfs-assistant
    inputs.helix.packages."${pkgs.system}".helix
    (fenix.complete.withComponents [
      "cargo"
      "clippy"
      "rust-src"
      "rustc"
      "rustfmt"
    ])
    rust-analyzer-nightly
  ];
}
