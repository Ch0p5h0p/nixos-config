{ pkgs, lib, ... }:

{
  # Auto-update
  system.autoUpgrade.enable = true;
  system.autoUpgrade.dates = "weekly";

  # Auto-cleanup
  nix.gc.automatic = true;
  nix.gc.dates = "daily";
  nix.gc.options = "--delete-older-than 10d";
  nix.settings.auto-optimise-store = true;
}
