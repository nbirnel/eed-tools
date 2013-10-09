#!/usr/bin/perl

use strict;
use warnings;
use English;

my $FS = $, = ',';
$\ = "\r\n";
my $prefix = 'CTRL';
my $pad = 6;
my $begnum = 1;
# our default format will be CTRL%06d
my $fmt = sprintf('%s%%0%dd', $prefix, $pad);

while (<>) {
    chomp;	# strip record separator
    my @fields = split($FS, $_, -1);
    if ($fields[0] eq 'IM') {
        $fields[1] = sprintf($fmt, $begnum);
        $begnum++;
    }

    print join($,,@fields);
}
