{ lib, ... }:

{
  services = {
    flatpak = {
      enable = true;
      remotes = lib.mkOptionDefault [
        {
          name = "flathub-beta";
          location = "https://flathub.org/beta-repo/flathub-beta.flatpakrepo";
        }
      ];
      packages = [
        "com.heroicgameslauncher.hgl"
        "com.spotify.Client"
        # "it.mijorus.gearlever"

      ];
      update.onActivation = true;
    };
  };
}
