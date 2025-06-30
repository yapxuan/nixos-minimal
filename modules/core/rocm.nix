{ pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.rocmPackages.clr
    pkgs.rocmPackages.hipblas-common
    pkgs.rocmPackages.hipblas
    pkgs.rocmPackages.rocblas
    pkgs.rocmPackages.rocsolver
    pkgs.rocmPackages.rocsparse
    pkgs.rocmPackages.rocm-device-libs
    pkgs.rocmPackages.rocm-smi
  ];
}
