{ config, pkgs, ... }:
{
    imports =
    [ # Include the results of the hardware scan (not versioned).
      ./hardware-configuration.nix
    ];

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # Bootloader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.hostName = "katz";
    networking.wireless.enable = true;
    networking.networkmanager.enable = true;

    environment.systemPackages = with pkgs; [
        i3
        zsh
        alacritty
        vim
        git
        wget
        curl
        go
        podman
        kubectl
        google-cloud-sdk
        tailscale
        chromium
        spotify
        slack
    ];

    hardware.graphics.enable = true;

    services.openssh.enable = true;
    services.xserver.enable = true;
    services.xserver.videoDrivers = [ "nvidia" ];
    services.xserver.windowManager.i3.enable = true;
    services.xserver.xkb = {
        layout = "us";
        variant = "";
    };

    virtualisation.podman.enable = true;

    time.timeZone = "Europe/Berlin";
    i18n.defaultLocale = "en_US.UTF-8";

    users.users.katz = {
        isNormalUser = true;
        description = "Tiago Katcipis";
        extraGroups = [ "networkmanager" "wheel" ];
        packages = with pkgs; [];
    };

    system.stateVersion = "25.11";
}
