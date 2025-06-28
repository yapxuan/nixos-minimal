{ ... }:

{
  programs = {
    ncspot = {
      enable = true;
      settings = {
        backend = "pulseaudio";
      };
    };
  };
}
