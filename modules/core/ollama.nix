{ ... }:

{
  # nixpkgs.config.rocmSupport = true;
  services.ollama = {
    enable = true;
    # package = pkgs.ollama-rocm;
    # acceleration = "rocm";
    # rocmOverrideGfx = "11.0.0";
    loadModels = [
      "gemma3n:latest"
      "codellama:latest"
    ];
  };
}
