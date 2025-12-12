{ config, pkgs, ... }:
{
    environment.systemPackages = [
        pkgs.i3
        pkgs.zsh
        pkgs.alacritty
        pkgs.vim
        pkgs.git
        pkgs.go
        pkgs.podman
        pkgs.kubectl
        pkgs.google-cloud-sdk
        pkgs.tailscale
        pkgs.spotify
        pkgs.slack
    ];

    hardware.graphics.enable = true;

    services.xserver.enable = true;
    services.xserver.videoDrivers = [ "nvidia" ];
    services.xserver.windowManager.i3.enable = true;

    virtualisation.podman.enable = true;

    users.users.katz = {
        isNormalUser = true;
        home = "/home/katz";
        extraGroups = [
            "wheel"
            "networkmanager"
        ];
    };
}
