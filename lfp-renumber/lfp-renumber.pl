#!/usr/bin/perl
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if $running_under_some_shell;
			# this emulates #! processing on NIH machines.
			# (remove #! line above if indigestible)

eval '$'.$1.'$2;' while $ARGV[0] =~ /^([A-Za-z_0-9]+=)(.*)/ && shift;
			# process any FOO=bar switches


$FS = ' ';		# set field separator
$, = ' ';		# set output field separator
$\ = "\n";		# set output record separator

$FS = $, = ',';
$\ = "\\r\n";
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
