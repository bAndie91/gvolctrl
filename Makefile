
default:
	@echo maybe interested in: make install
	false
.PHONY: install

install: /usr/local/bin/gvolctrl /etc/xdg/autostart/gvolctrl.desktop
	update-menus
	update-desktop-database
.PHONY: install

/usr/local/bin/gvolctrl: deb/usr/bin/gvolctrl
	install $< $@

/etc/xdg/autostart/gvolctrl.desktop: deb/etc/xdg/autostart/gvolctrl.desktop
	install $< $@
