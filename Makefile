system:
	./scripts/essentials.sh
	./scripts/docker.sh
	./scripts/vim.sh
	./scripts/zsh.sh
	./scripts/spotify.sh
	./scripts/i3.sh
	./scripts/i3-cfg.sh

guard-%:
	@ if [ "${${*}}" = "" ]; then \
                echo "Variable '$*' not set"; \
                exit 1; \
        fi

i3cfg: guard-user
	./scripts/i3-cfg.sh $(user)
