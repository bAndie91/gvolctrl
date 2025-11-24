
INSTALL_WRAPPER =

.PHONY: default
default:
	@echo maybe interested in: make install INSTALL_WRAPPER=sudo
	false

.PHONY: install
install: /usr/local/bin/gvolctrl /etc/xdg/autostart/gvolctrl.desktop  /usr/local/bin/paosd

/usr/local/bin/gvolctrl: deb/usr/bin/gvolctrl
	$(INSTALL_WRAPPER) install $< $@

/usr/local/bin/paosd: paosd
	$(INSTALL_WRAPPER) install $< $@

/etc/xdg/autostart/gvolctrl.desktop: deb/etc/xdg/autostart/gvolctrl.desktop
	$(INSTALL_WRAPPER) install $< $@
	$(INSTALL_WRAPPER) update-menus
	$(INSTALL_WRAPPER) update-desktop-database
