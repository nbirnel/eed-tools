PREFIX = /usr/local

install :: lfp-renumber lfp-renumber.1
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f lfp-renumber ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/lfp-renumber
	mkdir -p ${DESTDIR}${PREFIX}/man/man1
	cp -f lfp-renumber.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/lfp-renumber.1

pdf :: lfp-renumber.1
	man -t ./lfp-renumber.1 > lfp-renumber.ps
	ps2pdf lfp-renumber.ps

print-pdf :: lfp-renumber.pdf
	cygstart -p lfp-renumber.pdf

clean ::
	rm -r lfp-renumber.ps

remove ::
	rm -f ${DESTDIR}${PREFIX}/bin/lfp-renumber
	rm -f ${DESTDIR}${PREFIX}/man/man1/lfp-renumber.1
