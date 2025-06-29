{ pkgs, ... }:

{
  services.ollama = {
    enable = true;
    package = pkgs.ollama-rocm;
    acceleration = "rocm";
    rocmOverrideGfx = "11.0.0";
    loadModels = [
      "gemma3n:e4b"
      "codellama:7b"
    ];
  };
}
