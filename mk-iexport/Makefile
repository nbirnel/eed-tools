PROG = mk-iexport
PREFIX = /usr/local

install : $(PROG) $(PROG).1 etc
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f $(PROG) ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/$(PROG)
	mkdir -p ${DESTDIR}${PREFIX}/etc/${PROG}
	cp -fr etc/* ${DESTDIR}${PREFIX}/etc/${PROG}
	chmod -R 644 ${DESTDIR}${PREFIX}/etc/${PROG}
	mkdir -p ${DESTDIR}${PREFIX}/man/man1
	cp -f $(PROG).1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/$(PROG).1

deinstall :
	rm -f ${DESTDIR}${PREFIX}/bin/$(PROG)
	rm -fr ${DESTDIR}${PREFIX}/etc/${PROG}/
	rm -f ${DESTDIR}${PREFIX}/man/man1/$(PROG).1
	echo "Make deinstall does not deinstall user templates!" 1>&2

.PHONY : deinstall install
