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
        "com.spotify.Client"
        "com.termius.Termius"
      ];
      update.onActivation = true;
    };
  };
}
