PREFIX = /usr/local
PACKAGE = eed-tools
PROGS = b2gb catalog clean-ibuild coloryank count-iocr debom  \
denativemeta dii-renum dii2begend doc2pdf fd-fold fieldedcount  fill \
findloose fixdii html2pdf isummsize lfp2begend lfp2binder lfp2csv lfp2dii \
 lfp2fielded lfp2folderbat lfp2lst lfp2meta lfp2opt lfp2singfolds  \
lfp2subdirsbat lfp2summ lfpdebreak lfpfolderbreak lfppath2issues ls2begend \
 meta2begend meta2fielded meta2folders mkdap mk-iexport opt2lfp opt2rel  \
printsqc prt-rename prt-split prt-uncollate recolor-ibuild rellfp2ipro  \
relsql-mkindex robo-iocr rotate sing2multt ss2natives statbegend statdat \
 statdii statlfp statopt statvstats summ-refold txt2ss watch-ibuild  \
watch-icommit watch-iexport watch-iocr xmpp2csv list2header decomma-lfpocr \
lfp-renumber ls2opt

install :: ${PROGS}

${PROGS} ::
	cd $@ && make

all :: install install-man doc 

install-man :: ${PACKAGE}.1
	mkdir -p ${DESTDIR}/usr/share/man/man1
	cp ${PACKAGE}.1 ${DESTDIR}/usr/share/man/man1/
	chmod 644 ${DESTDIR}/usr/share/man/man1/${PACKAGE}.1 

doc :: ${PACKAGE}.pdf

${PACKAGE}.pdf :: ${PACKAGE}.1
	groff -man ${PACKAGE}.1 >${PACKAGE}.ps
	ps2pdf ${PACKAGE}.ps

man : ${PACKAGE}.1 tools/manmaker

push :
	git push origin master

pull :
	git pull origin master

readme :: README.md
	git commit -m'update $?' $?

README.md :: ${PACKAGE}.1
	groff -tman -Thtml $? | sed '/<html/,$$!d; /<style/,/<\/style>/d' >$@

${PACKAGE}.1 :: tools/manmaker
	./tools/manmaker ${PROGS}
	
clean :: clean-doc
	rm -f ${PACKAGE}.pdf ${PACKAGE}.1 README.md

clean-doc ::
	rm -f ${PACKAGE}.ps

.PHONY :: print-doc doc clean clean-doc man doc install-man install all readme

