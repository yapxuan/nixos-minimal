{ pkgs, inputs, ... }:

{
  programs.zed-editor = {
    enable = true;
    package = inputs.zed.packages."${pkgs.system}".default;
    extensions = [
      "nix"
      "nvim-nightfox"
    ];
  };
}
