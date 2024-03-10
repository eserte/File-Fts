#!/usr/bin/perl -w
# -*- perl -*-

#
# $Id: test.pl,v 1.3 2024/03/10 14:47:58 eserte Exp $
# Author: Slaven Rezic
#

use strict;
use FindBin;

use Data::Dumper;
use File::Find;
use File::Basename qw(dirname);
use Getopt::Long;
use Time::HiRes qw();

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
if (!eval q{ use Test::Differences; 1 }) {
    *eq_or_diff = sub {
	my($got, $expected, @rest) = @_;
	is_deeply($got, $expected, @rest)
	    or diag Dumper([$got, $expected]);
    };
}

BEGIN { plan tests => 1 }

my $root = dirname $FindBin::RealBin;
GetOptions("dir=s" => \$root)
    or die "usage: $0 [--dir /path/to/directory]\n";

my %f;
{
    my $t0 = Time::HiRes::time;
    my $f = new File::Fts([$root], &FTS_PHYSICAL | &FTS_NOSTAT);
    while(my $ftsent = File::Fts::read($f)) {
	# Directories are visited at least twice (see fts(3)), so
	# use a hash instead of an array:
	$f{File::Ftsent::path($ftsent)}++;
    }
    my $t1 = Time::HiRes::time;
    diag "Time parsing $root with File::Fts: " . ($t1-$t0) . "s, " . (scalar keys %f) . " entries";
}

my @f2;
{
    my $t0 = Time::HiRes::time;
    find(sub { push @f2, $File::Find::name }, $root);
    my $t1 = Time::HiRes::time;
    diag "Time parsing $root with File::Find: " . ($t1-$t0) . "s, " . (scalar @f2) . " entries";
}

my @f = sort keys %f;
@f2 = sort @f2;

eq_or_diff(\@f, \@f2, "Compare File::FTS and File::Find filelists");
