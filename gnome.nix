{ config, lib, pkgs, inputs, ... }:

{
 services.displayManager.gdm.enable = true;
 services.desktopManager.gnome.enable = true;

  environment.systemPackages = with pkgs; [
   gnome-tweaks
   gnomeExtensions.zen
   gnomeExtensions.paperwm
   gnomeExtensions.vitals
   
 ];
 
 environment.gnome.excludePackages = with pkgs; [
   gnome-tour
   gnome-maps
   snapshot
   cheese
   epiphany
   gedit
   simple-scan
   yelp
   evince
   file-roller
   geary
   loupe
   gnome-text-editor
   decibels
   seahorse
   totem
   gnome-calculator
   gnome-calendar
   gnome-characters
   gnome-clocks
   gnome-contacts
   gnome-font-viewer
   gnome-music
   gnome-photos
   gnome-screenshot
   gnome-system-monitor
   gnome-weather
   gnome-connections
 ];
}
