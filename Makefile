system:
	./scripts/essentials.sh
	./scripts/x.sh
	./scripts/window-managers.sh
	./scripts/i3-cfg.sh 
	./scripts/browsers.sh
	./scripts/docker.sh
	./scripts/vagrant.sh
	./scripts/zsh.sh
	./scripts/golang.sh
	./scripts/fonts.sh
	./scripts/color-themes.sh
	./scripts/vim.sh
	./scripts/spotify.sh
	./scripts/stress.sh

iso:
	sudo nash setupiso.nsh

usb:
	sudo dd bs=4M if=$(iso) of=$(dev) status=progress && sync
