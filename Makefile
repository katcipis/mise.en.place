system:
	./scripts/essentials.sh
	./scripts/x.sh
	./scripts/window-managers.sh
	./scripts/browsers.sh
	./scripts/docker.sh
	./scripts/vagrant.sh
	./scripts/zsh.sh
	./scripts/fonts.sh
	./scripts/color-themes.sh
	./scripts/vim.sh
	./scripts/spotify.sh

i3cfg: 
	./scripts/i3-cfg.sh 

shell:
	docker build -t archworkbench .
	docker run --rm -ti -v `pwd`:/workbench archworkbench bash
