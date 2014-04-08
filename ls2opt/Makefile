PROG = ls2opt
PREFIX = /usr/local

install : $(PROG) $(PROG).1
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f $(PROG) ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/$(PROG)
	mkdir -p ${DESTDIR}${PREFIX}/man/man1
	cp -f $(PROG).1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/$(PROG).1

uninstall ::
	rm -f ${DESTDIR}${PREFIX}/bin/$(PROG)
	rm -f ${DESTDIR}${PREFIX}/man/man1/$(PROG).1

clean ::
	rm -r $(PROG).ps

clean-all ::
	rm -r $(PROG).pdf

.PHONY :: install uninstall clean clean-all
