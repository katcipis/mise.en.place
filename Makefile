iso:
	sudo ./setupiso.sh

usb:
	sudo dd bs=4M if=$(iso) of=$(dev) status=progress && sync
