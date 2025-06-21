{ config, lib, pkgs, inputs, ... }:

{ 
 services.pipewire = {
   enable = true;
   pulse.enable = true;
 };
}
