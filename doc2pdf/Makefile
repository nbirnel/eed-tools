PROG = doc2pdf
PREFIX = /usr/local

install : $(PROG) $(PROG).1 ${PROG}.vbs
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f $(PROG) ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/$(PROG)
	mkdir -p ${DESTDIR}${PREFIX}/etc/${PROG}/
	cp -f ${PROG}.vbs ${DESTDIR}${PREFIX}/etc/${PROG}/
	chmod 755 ${DESTDIR}${PREFIX}/etc/${PROG}/${PROG}.vbs
	mkdir -p ${DESTDIR}${PREFIX}/man/man1
	cp -f $(PROG).1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/$(PROG).1

deinstall :
	rm -f ${DESTDIR}${PREFIX}/bin/$(PROG)
	rm -rf ${DESTDIR}${PREFIX}/etc/${PROG}
	rm -f ${DESTDIR}${PREFIX}/man/man1/$(PROG).1

.PHONY : deinstall install
