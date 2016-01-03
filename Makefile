all:
	./essentials.sh
	./x.sh
	./window-managers.sh
	./browsers.sh
	./docker.sh
	./vagrant.sh
	./vim.sh
	./zsh.sh
	./spotify.sh

shell:
	docker run -ti -v `pwd`:/workbench base/archlinux bash
