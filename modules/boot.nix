{ pkgs, ... }:
{
  # Use the systemd-boot EFI boot loader.
  # boot.loader.systemd-boot.enable = true;
  boot = {
    loader.limine = {
      enable = true;
      efiSupport = true;
      style.wallpapers = [ pkgs.nixos-artwork.wallpapers.simple-dark-gray-bootloader.gnomeFilePath ];
    };
    loader.efi.canTouchEfiVariables = true;

    # Use stable kernel.
    kernelPackages = pkgs.linuxPackages_latest;
  };
}
