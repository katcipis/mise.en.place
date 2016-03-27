system:
	./scripts/essentials.sh
	./scripts/x.sh
	./scripts/window-managers.sh
	./scripts/i3-cfg.sh 
	./scripts/browsers.sh
	./scripts/docker.sh
	./scripts/vagrant.sh
	./scripts/zsh.sh
	./scripts/fonts.sh
	./scripts/color-themes.sh
	./scripts/vim.sh
	./scripts/spotify.sh

shell:
	docker build -t archworkbench .
	docker run --rm -ti -v `pwd`:/workbench archworkbench bash
