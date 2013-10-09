#!/usr/bin/perl

$FS = $, = ',';
$\ = "\r\n";
$prefix = 'CTRL';
$pad = 6;
$begnum = 1;
# our default format will be CTRL%06d
$fmt = sprintf('%s%%0%dd', $prefix, $pad);

while (<>) {
    chomp;	# strip record separator
    @Fld = split($FS, $_, -1);
    if ($Fld[(1)-1] eq 'IM') {
        $Fld[(2)-1] = sprintf($fmt, $begnum);
        $begnum++;
    }

    print join($,,@Fld);
}
