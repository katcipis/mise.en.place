switch:
	cp configuration.nix /etc/nixos
	nixos-rebuild switch

config:
	cp i3.config "${HOME}/.config/i3/config"

tools:
	./scripts/gcloud
