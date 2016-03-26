system:
	./scripts/essentials.sh
	./scripts/x.sh
	./scripts/window-managers.sh
	./scripts/browsers.sh
	./scripts/docker.sh
	./scripts/vagrant.sh
	./scripts/vim.sh
	./scripts/zsh.sh
	./scripts/spotify.sh

guard-%:
	@ if [ "${${*}}" = "" ]; then \
                echo "Variable '$*' not set"; \
                exit 1; \
        fi

i3cfg: guard-user
	./scripts/i3-cfg.sh $(user)

shell:
	docker build -t archworkbench .
	docker run -ti -v `pwd`:/workbench archworkbench bash
