INSTALL = /usr/bin/install
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA    = ${INSTALL} -m 644

all: ibs-cli

install: all
	mkdir -p $(DESTDIR)/usr/bin/
	$(INSTALL_PROGRAM) ibs-cli $(DESTDIR)/usr/bin/
	mkdir -p $(DESTDIR)/etc/
	$(INSTALL_PROGRAM) ibs-cli.completion $(DESTDIR)/etc/bash_completion.d/ibs-cli
