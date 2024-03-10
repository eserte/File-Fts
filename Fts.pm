package File::Fts;

use strict;
use Carp;
use vars qw($VERSION @ISA @EXPORT $AUTOLOAD);

require Exporter;
require DynaLoader;
require AutoLoader;

@ISA = qw(Exporter DynaLoader);
# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.
@EXPORT = qw(
	FTS_AGAIN
	FTS_COMFOLLOW
	FTS_D
	FTS_DC
	FTS_DEFAULT
	FTS_DNR
	FTS_DONTCHDIR
	FTS_DOT
	FTS_DP
	FTS_ERR
	FTS_F
	FTS_FOLLOW
	FTS_INIT
	FTS_LOGICAL
	FTS_NAMEONLY
	FTS_NOCHDIR
	FTS_NOINSTR
	FTS_NOSTAT
	FTS_NS
	FTS_NSOK
	FTS_OPTIONMASK
	FTS_PHYSICAL
	FTS_ROOTLEVEL
	FTS_ROOTPARENTLEVEL
	FTS_SEEDOT
	FTS_SKIP
	FTS_SL
	FTS_SLNONE
	FTS_STOP
	FTS_SYMFOLLOW
	FTS_XDEV
);
$VERSION = '0.01';

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.  If a constant is not found then control is passed
    # to the AUTOLOAD in AutoLoader.

    my $constname;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    my $val = constant($constname, @_ ? $_[0] : 0);
    if ($! != 0) {
	if ($! =~ /Invalid/) {
	    $AutoLoader::AUTOLOAD = $AUTOLOAD;
	    goto &AutoLoader::AUTOLOAD;
	}
	else {
		croak "Your vendor has not defined File::Fts macro $constname";
	}
    }
    eval "sub $AUTOLOAD { $val }";
    goto &$AUTOLOAD;
}

bootstrap File::Fts $VERSION;

# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__
# Below is the stub of documentation for your module. You better edit it!

=head1 NAME

File::Fts - Perl extension for blah blah blah

=head1 SYNOPSIS

  use File::Fts;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for File::Fts was created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head1 Exported constants

  FTS_AGAIN
  FTS_COMFOLLOW
  FTS_D
  FTS_DC
  FTS_DEFAULT
  FTS_DNR
  FTS_DONTCHDIR
  FTS_DOT
  FTS_DP
  FTS_ERR
  FTS_F
  FTS_FOLLOW
  FTS_INIT
  FTS_LOGICAL
  FTS_NAMEONLY
  FTS_NOCHDIR
  FTS_NOINSTR
  FTS_NOSTAT
  FTS_NS
  FTS_NSOK
  FTS_OPTIONMASK
  FTS_PHYSICAL
  FTS_ROOTLEVEL
  FTS_ROOTPARENTLEVEL
  FTS_SEEDOT
  FTS_SKIP
  FTS_SL
  FTS_SLNONE
  FTS_STOP
  FTS_SYMFOLLOW
  FTS_XDEV


=head1 AUTHOR

A. U. Thor, a.u.thor@a.galaxy.far.far.away

=head1 SEE ALSO

perl(1).

=cut
