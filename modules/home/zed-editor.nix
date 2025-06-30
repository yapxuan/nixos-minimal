{ pkgs, inputs, ... }:

{
  programs.zed-editor = {
    enable = true;
    package = inputs.zed.packages."${pkgs.system}".default;
    extensions = [
      "nix"
      "toml"
      "nvim-nightfox"
      "catppuccin-icons"
      "mcp-server-context7"
      # "mcp-server-github"
      "mcp-server-sequential-thinking"
      # "mcp-server-brave-search"
    ];
  };
}
