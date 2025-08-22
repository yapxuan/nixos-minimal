{
  services = {
    speechd.enable = false;
    xserver = {
      enable = true;
      displayManager.lightdm.enable = true;
      windowManager.openbox.enable = true;
    };
  };
}
