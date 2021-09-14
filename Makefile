.PHONY: usb
usb:
	sudo dd bs=4M if=$(iso) of=$(dev) status=progress && sync

.PHONY: xcfg
xcfg:
	./hack/x-cfg.sh $(lang)

.PHONY: wm
wm:
	./hack/i3-cfg.sh

.PHONY: term
term:
	./hack/term-cfg.sh

.PHONY: iso-deps
iso-deps:
	pacman -S archiso edk2-ovmf qemu

.PHONY: iso
iso:
	./buildiso

.PHONY: test
test:
	run_archiso -i $(iso)
