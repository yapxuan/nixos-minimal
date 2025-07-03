{ pkgs, nur, ... }:

{
  programs.firefox = {
    enable = true;
    profiles.puiyq = {
      extensions = {
        packages = with pkgs.nur.repos.rycee.firefox-addons; [
          immersive-translate
        ];
        # settings = {
        #   "{5efceaa7-f3a2-4e59-a54b-85319448e305}".settings = {
        #   };
        # };
      };
    };
  };
}
