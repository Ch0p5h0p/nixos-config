{ pkgs, ... }:

{
  users.users."radar77" = {
    isNormalUser = true;
    description = "radar77";

    extraGroups = [
      "networkmanager"
      "wheel"
      "input"
      "tty"
    ];

    shell = pkgs.fish;
  };

  programs.fish.enable = true;
}
