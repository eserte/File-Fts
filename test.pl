#!/usr/bin/perl -w
# -*- perl -*-

#
# $Id: test.pl,v 1.1 2005/03/06 17:12:56 eserte Exp $
# Author: Slaven Rezic
#

use strict;
use FindBin;

use Data::Dumper;
use File::Find;
use File::Basename qw(dirname);

use File::Fts;

BEGIN {
    if (!eval q{
	use Test::More;
	1;
    }) {
	print "1..0 # skip: no Test::More module\n";
	exit;
    }
}

BEGIN { plan tests => 1 }

my $root = dirname $FindBin::RealBin;
my %f;
my $f = new File::Fts([$root], &FTS_PHYSICAL | &FTS_NOSTAT);
while(my $ftsent = File::Fts::read($f)) {
    # Directories are visited at least twice (see fts(3)), so
    # use a hash instead of an array:
    $f{File::Ftsent::path($ftsent)}++;
}

my @f2;
find(sub { push @f2, $File::Find::name }, $root);

my @f = sort keys %f;
@f2 = sort @f2;

is_deeply(\@f, \@f2)
    or diag Dumper([\@f, \@f2]);
