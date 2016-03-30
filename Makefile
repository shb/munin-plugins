PREFIX?=/usr/local
ETC=etc
SHARE=share

PLUGINS=munin/plugins

MUNIN_PLUGIN_LIBDIR=$(PREFIX)/$(SHARE)/$(PLUGINS)

.PHONY: all

all:
	@echo "Nothing to make, try `make install` instead ^_^"

install:
	install -d $(MUNIN_PLUGIN_LIBDIR)
	install -t $(MUNIN_PLUGIN_LIBDIR) src/*

uninstall:
	for plugin in dir/*; do rm -fv $(MUNIN_PLUGIN_LIBDIR)/$$plugin; done
