iso:
	sudo nash setupiso.nsh

usb:
	sudo dd bs=4M if=$(iso) of=$(dev) status=progress && sync
