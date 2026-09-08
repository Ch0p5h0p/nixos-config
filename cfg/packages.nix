{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Compilers
    gcc
    clang
    rustc
    jdk21
    jdk25
    nodejs_latest

    # Dev tools 
    git
    gnumake
    cargo
    evcxr
    nixd
    nixfmt
    rustfmt
    rust-analyzer
    clang-tools

    # Editors 
    neovim
    zed-editor-fhs

    # Misc. apps
    aseprite
    pince
    
    # Desktop / Wayland
    kitty
    fuzzel
    xwayland-satellite
    wl-clipboard
    brightnessctl
    adwaita-icon-theme
    kdePackages.qtstyleplugin-kvantum
    kdePackages.dolphin

    # Gaming
    steam
    prismlauncher
    olympus
    dusklight

    # Internet
    firefox
    discord
    vesktop

    # Utilities 
    kbd
    ranger
    fastfetch
    zip
    unzip
    kdePackages.ark
    file
    tree
    vlc

    # Flake packages 
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.space-mono
  ];
}
