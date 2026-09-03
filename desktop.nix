{ pkgs, ... }:

{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  programs.niri.enable = true;
  programs.xwayland.enable = true;

  programs.nix-ld.enable = true;

  programs.noctalia = {
    enable = true;
    recommendedServices.enable = true;
  };

  programs.noctalia-greeter = {
    enable = true;

    greeter-args = "";

    settings = {
      cursor = {
        theme = "Bibata-Modern-Ice";
        size = 24;
        path = "${pkgs.bibata-cursors}/share/icons";
      };

      keyboard = {
        layout = "us";
      };
    };
  };

  security.polkit.enable = true;

  fonts.packages = with pkgs; [
    nerd-fonts.space-mono
  ];
}
