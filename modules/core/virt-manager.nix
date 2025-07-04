{ ... }:

{
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "puiyq" ];
  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      swtpm.enable = true;
      ovmf.enable = true;
    };
  };
  virtualisation.spiceUSBRedirection.enable = true;
}
