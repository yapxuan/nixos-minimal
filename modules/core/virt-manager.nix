{ ... }:

{
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "puiyq" ];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
}
