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

    # Podman!!!
    virtualisation.podman.enable = true;

    networking.hostName = "katz";
    networking.networkmanager.enable = true;

    environment.systemPackages = with pkgs; [
        i3
        zsh
        alacritty
        vim
        git
        wget
        fzf
	curl
	binutils
	gcc
	gnumake
	just
        go
        podman
        kubectl
        google-cloud-sdk
        google-chrome
        tailscale
        spotify
        slack
    ];

    hardware.graphics.enable = true;
    hardware.nvidia = {
        modesetting.enable = true;
        # Nvidia power management. Experimental, and can cause sleep/suspend to fail.
        # Enable this if you have graphical corruption issues or application crashes after waking
        # up from sleep. This fixes it by saving the entire VRAM memory to /tmp/ instead 
        # of just the bare essentials.
        powerManagement.enable = false;

        # Fine-grained power management. Turns off GPU when not in use.
        # Experimental and only works on modern Nvidia GPUs (Turing or newer).
        powerManagement.finegrained = false;

        # Use the NVidia open source kernel module (not to be confused with the
        # independent third-party "nouveau" open source driver).
        # Support is limited to the Turing and later architectures. Full list of 
        # supported GPUs is at: 
        # https://github.com/NVIDIA/open-gpu-kernel-modules#compatible-gpus 
        # Only available from driver 515.43.04+
        open = true;
        nvidiaSettings = true;
        package = config.boot.kernelPackages.nvidiaPackages.stable;
    };

     # Enable sound with pipewire.
    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
    };

    services.xserver.enable = true;
    services.xserver.videoDrivers = [ "nvidia" ];
    services.xserver.windowManager.i3.enable = true;
    services.xserver.xkb = {
        layout = "us";
        variant = "";
    };
    services.openssh.enable = true;

    programs.gnupg.agent = {
        enable = true;
        enableSSHSupport = true;
    };
    programs.zsh.enable = true;
    programs.firefox.enable = true;


    time.timeZone = "Europe/Berlin";
    i18n.defaultLocale = "en_US.UTF-8";

    users.users.katz = {
        isNormalUser = true;
        description = "Tiago Katcipis";
        extraGroups = [ "networkmanager" "wheel" ];
        shell = pkgs.zsh;
        packages = with pkgs; [];
    };

    system.stateVersion = "25.11";
}
