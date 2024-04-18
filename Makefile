
default:
	@echo maybe interested in: make install
	false
.PHONY: install

install: /usr/local/bin/gvolctrl /usr/local/bin/paosd /etc/xdg/autostart/gvolctrl.desktop
.PHONY: install

/usr/local/bin/gvolctrl: deb/usr/bin/gvolctrl
	install $< $@

/usr/local/bin/paosd: paosd
	install $< $@

/etc/xdg/autostart/gvolctrl.desktop: deb/etc/xdg/autostart/gvolctrl.desktop
	install $< $@
	update-menus
	update-desktop-database
