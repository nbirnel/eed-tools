<html>
<head>
<meta name="generator" content="groff -Thtml, see www.gnu.org">
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<meta name="Content-Style" content="text/css">
<title>eed-tools</title>

</head>
<body>

<h1 align="center">eed-tools</h1>

<a href="#NAME">NAME</a><br>
<a href="#SYNOPSIS">SYNOPSIS</a><br>
<a href="#PROGRAMS">PROGRAMS</a><br>
<a href="#RUNTIME DEPENDENCIES">RUNTIME DEPENDENCIES</a><br>
<a href="#RELATED TOOLS">RELATED TOOLS</a><br>
<a href="#LICENSE">LICENSE</a><br>

<hr>


<h2>NAME
<a name="NAME"></a>
</h2>



<p style="margin-left:11%; margin-top: 1em">eed-tools&minus;
tools for manipulating electronic evidence discovery
files</p>

<h2>SYNOPSIS
<a name="SYNOPSIS"></a>
</h2>


<p style="margin-left:11%; margin-top: 1em">This is a
collection of tools for manipulating files used by various
EED programs. None of the tools do any discovery &mdash;
they merely process lfp, dii, opt, and other files generated
by Ipro, Summation, Relativity, or Concordance. These are
largely not portable, and need to be run under Cygwin.</p>

<h2>PROGRAMS
<a name="PROGRAMS"></a>
</h2>


<p style="margin-left:11%; margin-top: 1em"><b>b2gb</b>
&minus; convert bytes to gigabytes <b><br>
catalog</b> &minus; print file extensions of all files in
current directory <b><br>
clean-ibuild</b> &minus; clean up an IPRO build directory
<b><br>
coloryank</b> &minus; copy jpgs from a build to a color
directory <b><br>
count-iocr</b> &minus; provide ocr stats from IPRO ecap ocr
summaries <b><br>
debom</b> &minus; remove byte order mark <b><br>
denativemeta</b> &minus; empty NATIVE_FILE in metadata
records without slipsheets <b><br>
dii2begend</b> &minus; Create a beg-end from a summation dii
<b><br>
dii-renum</b> &minus; renumber the records in a dii file
<b><br>
doc2pdf</b> &minus; generate pdfs from ms word files.</p>

<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<tr valign="top" align="left">
<td width="11%"></td>
<td width="-3%">


<p><b>fd-fold</b></p></td>
<td width="7%"></td>
<td width="8%"></td>
<td width="77%">


<p><b>&acirc; generates a shell script to refolder pdfs
based on lfp FD</b></p></td></tr>
</table>

<p style="margin-left:11%;"><b>fieldedcount</b> &minus;
count billable scan time coding in IPRO&rsquo;s FIELDED.txt
<b><br>
fill</b> &minus; fill blank lines with the last non-blank
line <b><br>
findloose</b> &minus; print files in directories with other
directories <b><br>
fixdii</b> &minus; make most common changes to an
ipro-generated DII <b><br>
html2pdf</b> &minus; Create pdfs from html documents <b><br>
isummsize</b> &minus; get gigabytes from ecap Discovery
Summary <b><br>
lfp2begend</b> &minus; create begin - end ranges from lfps
<b><br>
lfp2binder</b> &minus; suggest hardcopy binder or box breaks
from an lfp <b><br>
lfp2csv</b> &minus; convert IM lines of an lfp to csv
<b><br>
lfp2dii</b> &minus; generate a dii from an lfp file <b><br>
lfp2fielded</b> &minus; generate fielded text from an lfp
<b><br>
lfp2folderbat</b> &minus; generate a batch file to make
folders from an lfp <b><br>
lfp2lst</b> &minus; generate a summation style lst from an
lfp <b><br>
lfp2meta</b> &minus; generate a metadata csv from an lfp
file <b><br>
lfp2opt</b> &minus; generate a Concordance style opt file
from an lfp <b><br>
lfp2singfolds</b> &minus; make a shell script to put ocr in
folders <b><br>
lfp2subdirsbat</b> &minus; create a batch file for
subdirectories from an lfp <b><br>
lfp2summ</b> &minus; create a summation dii from an ipro lfp
<b><br>
lfpdebreak</b> &minus; generate an lfp to remove all breaks
from existing lfps <b><br>
lfpfolderbreak</b> &minus; generate parent break lfp for
each folder change <b><br>
lfppath2issues</b> &minus; create an issues lfp from another
lfp <b><br>
ls2begend</b> &minus; create begin - end ranges for a list
of filenames <b><br>
meta2begend</b> &minus; generate begin end ranges from a csv
metadata file <b><br>
meta2fielded</b> &minus; generate fielded text file from a
metadata csv <b><br>
meta2folders</b> &minus; recreate native folders from
metadata <b><br>
mkdap</b> &minus; create lfp which updates direct access
path <b><br>
mk-iexport</b> &minus; set up ipro ecap export <b><br>
opt2lfp</b> &minus; convert opticon opt to relativity lfp
<b><br>
opt2rel</b> &minus; prepare opt file for load into
Relativity <b><br>
printsqc</b> &minus; print all stat qc manifests in a volume
<b><br>
prt-rename</b> &minus; rename prts after their first
document <b><br>
prt-split</b> &minus; Break a prt file on specified lines.
<b><br>
prt-uncollate</b> &minus; uncollate the documents in a prt
<b><br>
recolor-ibuild</b> &minus; combine a color build and a black
and white build <b><br>
rellfp2ipro</b> &minus; convert Relativity lfp to Ipro lfp
<b><br>
relsql-mkindex</b> &minus; generage a script to update a SQL
index for Relativity <b><br>
robo-iocr</b> &minus; copy IPRO ocr to another directory.
<b><br>
rotate</b> &minus; rotate landscaped images <b><br>
sing2multt</b> &minus; create multi-page text from
single-page text ocr <b><br>
ss2natives</b> &minus; copy natives elsewhere for
exceptions. <b><br>
statbegend</b> &minus; get doc count and range from a beg
end file <b><br>
statdat</b> &minus; extract useful summary from a
concordance dat file <b><br>
statdii</b> &minus; extract useful summary from a summation
dii file <b><br>
statlfp</b> &minus; extract useful statistics from an lfp
<b><br>
statopt</b> &minus; extract useful summary from a
concordance opt file <b><br>
statvstats</b> &minus; extract useful summary from an IPRO
vstats or bstats file <b><br>
summ-refold</b> &minus; place multi-page text in images
folder per lfp <b><br>
txt2ss</b> &minus; generate a nicely formatted slipsheet pdf
from plain text <b><br>
watch-ibuild</b> &minus; wait for an Ipro build to complete
<b><br>
watch-icommit</b> &minus; wait for an Ipro commit to
complete <b><br>
watch-iexport</b> &minus; wait for an Ipro ecap export to
complete <b><br>
watch-iocr</b> &minus; wait for Ipro ocr to complete.
<b><br>
xmpp2csv</b> &minus; convert an xmpp to a csv, and break it
per record</p>

<h2>RUNTIME DEPENDENCIES
<a name="RUNTIME DEPENDENCIES"></a>
</h2>


<p style="margin-left:11%; margin-top: 1em">perl, cygwin,
csv-tools (http://github.com/nbirnel/csv-tools)</p>

<h2>RELATED TOOLS
<a name="RELATED TOOLS"></a>
</h2>



<p style="margin-left:11%; margin-top: 1em"><b>csv-tools</b>
(http://github.com/nbirnel/csv-tools) <b><br>
expand-range</b> (http://github.com/nbirnel/expand-range)
<b><br>
xrefup</b> (http://github.com/nbirnel/xrefup)</p>

<h2>LICENSE
<a name="LICENSE"></a>
</h2>


<p style="margin-left:11%; margin-top: 1em">&copy; 2011,
2012, 2013 Noah Birnel</p>

<p style="margin-left:11%; margin-top: 1em">You may use
this documentation however you like.</p>
<hr>
</body>
</html>
