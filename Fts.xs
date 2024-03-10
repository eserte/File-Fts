/* -*- c -*- */
#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#ifdef __cplusplus
}
#endif

#include <fts.h>

/* typedef struct { */
/*   FTS* fts; */
/*   SV*  sub; */
/* } Fts_type; */

/* typedef Fts_type * Fts; */

typedef FTS* File__Fts;
typedef FTSENT* File__Ftsent;

static int
not_here(char *s)
{
    croak("%s not implemented on this architecture", s);
    return -1;
}

static double
constant(char *name, int arg)
{
    errno = 0;
    switch (*name) {
    case 'A':
	break;
    case 'B':
	break;
    case 'C':
	break;
    case 'D':
	break;
    case 'E':
	break;
    case 'F':
	if (strEQ(name, "FTS_AGAIN"))
#ifdef FTS_AGAIN
	    return FTS_AGAIN;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_COMFOLLOW"))
#ifdef FTS_COMFOLLOW
	    return FTS_COMFOLLOW;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_D"))
#ifdef FTS_D
	    return FTS_D;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_DC"))
#ifdef FTS_DC
	    return FTS_DC;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_DEFAULT"))
#ifdef FTS_DEFAULT
	    return FTS_DEFAULT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_DNR"))
#ifdef FTS_DNR
	    return FTS_DNR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_DONTCHDIR"))
#ifdef FTS_DONTCHDIR
	    return FTS_DONTCHDIR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_DOT"))
#ifdef FTS_DOT
	    return FTS_DOT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_DP"))
#ifdef FTS_DP
	    return FTS_DP;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_ERR"))
#ifdef FTS_ERR
	    return FTS_ERR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_F"))
#ifdef FTS_F
	    return FTS_F;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_FOLLOW"))
#ifdef FTS_FOLLOW
	    return FTS_FOLLOW;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_INIT"))
#ifdef FTS_INIT
	    return FTS_INIT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_LOGICAL"))
#ifdef FTS_LOGICAL
	    return FTS_LOGICAL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_NAMEONLY"))
#ifdef FTS_NAMEONLY
	    return FTS_NAMEONLY;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_NOCHDIR"))
#ifdef FTS_NOCHDIR
	    return FTS_NOCHDIR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_NOINSTR"))
#ifdef FTS_NOINSTR
	    return FTS_NOINSTR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_NOSTAT"))
#ifdef FTS_NOSTAT
	    return FTS_NOSTAT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_NS"))
#ifdef FTS_NS
	    return FTS_NS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_NSOK"))
#ifdef FTS_NSOK
	    return FTS_NSOK;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_OPTIONMASK"))
#ifdef FTS_OPTIONMASK
	    return FTS_OPTIONMASK;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_PHYSICAL"))
#ifdef FTS_PHYSICAL
	    return FTS_PHYSICAL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_ROOTLEVEL"))
#ifdef FTS_ROOTLEVEL
	    return FTS_ROOTLEVEL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_ROOTPARENTLEVEL"))
#ifdef FTS_ROOTPARENTLEVEL
	    return FTS_ROOTPARENTLEVEL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_SEEDOT"))
#ifdef FTS_SEEDOT
	    return FTS_SEEDOT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_SKIP"))
#ifdef FTS_SKIP
	    return FTS_SKIP;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_SL"))
#ifdef FTS_SL
	    return FTS_SL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_SLNONE"))
#ifdef FTS_SLNONE
	    return FTS_SLNONE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_STOP"))
#ifdef FTS_STOP
	    return FTS_STOP;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_SYMFOLLOW"))
#ifdef FTS_SYMFOLLOW
	    return FTS_SYMFOLLOW;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FTS_XDEV"))
#ifdef FTS_XDEV
	    return FTS_XDEV;
#else
	    goto not_there;
#endif
	break;
    case 'G':
	break;
    case 'H':
	break;
    case 'I':
	break;
    case 'J':
	break;
    case 'K':
	break;
    case 'L':
	break;
    case 'M':
	break;
    case 'N':
	break;
    case 'O':
	break;
    case 'P':
	break;
    case 'Q':
	break;
    case 'R':
	break;
    case 'S':
	break;
    case 'T':
	break;
    case 'U':
	break;
    case 'V':
	break;
    case 'W':
	break;
    case 'X':
	break;
    case 'Y':
	break;
    case 'Z':
	break;
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}


MODULE = File::Fts		PACKAGE = File::Fts		PREFIX = fts_


double
constant(name,arg)
	char *		name
	int		arg

File::Fts
fts_new(class, ...)
	char *		class
	PREINIT:
	char **		path_argv;
	int		options = FTS_PHYSICAL;
#ifdef __FreeBSD__
	int		(*compar)(const FTSENT* const *, const FTSENT* const *) = NULL;
#else
	int		(*compar)(const FTSENT**, const FTSENT**) = NULL;
#endif
	PROTOTYPE: $;\@$\&

	ALIAS:
	File::Fts::open = 1

	CODE:
		if (items > 1) {
			AV* arr;
	    		SV* elem;
	    		I32 i;
	    		if (!SvROK(ST(1)) || SvTYPE(SvRV(ST(1))) != SVt_PVAV)
	      			croak("First argument must be reference to an array");
			arr = (AV*)SvRV(ST(1));
	    		New(0, path_argv, av_len(arr)+2, char*);
	    		for(i=0; i<=av_len(arr); i++) {
	      			elem = *av_fetch(arr, i, 0);
	      			path_argv[i] = SvPV(elem, PL_na);
	    			path_argv[av_len(arr)+1] = NULL;
			}
		} else {
			New(0, path_argv, 2, char*);
			path_argv[0] = ".";
			path_argv[1] = NULL;
		}
		if (items > 2) {
			if (!SvIOK(ST(2)))
	      			croak("Second argument must be options flag");
			options = (int)SvIV(ST(2));
		}
/*
	if (items < 4) {
	    compar = NULL;
	    RETVAL->sub = NULL;
	  } else {
	    if (!SvROK(ST(3)) || SvTYPE(SvRV(ST(3))) != SVt_PVCV)
	      croak("Third argument must be subroutine reference");
	    RETVAL->sub = newSVsv(ST(3));
	    compar = Fts_compar;
	  }
*/		
	  if (items > 4)
	  	croak("usage: ...");

		RETVAL = fts_open(path_argv, options, compar);
	OUTPUT:
		RETVAL

File::Ftsent
fts_read(ftsp)
	File::Fts	ftsp

	PROTOTYPE: $

File::Ftsent
fts_children(ftsp,options)
	File::Fts	ftsp
	int		options

	PROTOTYPE: $$

int
fts_set(ftsp,f,options)
	File::Fts	ftsp
	File::Ftsent	f
	int		options

	PROTOTYPE: $$$

int
fts_close(ftsp)
	File::Fts	ftsp

	PROTOTYPE: $

	ALIAS:
	File::Fts::DESTROY = 1


MODULE = File::Fts		PACKAGE = File::Ftsent		PREFIX = fts_

u_short
fts_info(f)
	File::Ftsent	f

	PROTOTYPE: $

	CODE:
		RETVAL = f->fts_info;
	OUTPUT:
		RETVAL

char*
fts_accpath(f)
	File::Ftsent	f

	PROTOTYPE: $

	CODE:
		RETVAL = f->fts_accpath;
	OUTPUT:
		RETVAL

char*
fts_path(f)
	File::Ftsent	f

	PROTOTYPE: $

	CODE:
		RETVAL = f->fts_path;
	OUTPUT:
		RETVAL

short
fts_pathlen(f)
	File::Ftsent	f

	PROTOTYPE: $

	CODE:
		RETVAL = f->fts_pathlen;
	OUTPUT:
		RETVAL

char*
fts_name(f)
	File::Ftsent	f

	PROTOTYPE: $

	CODE:
		RETVAL = f->fts_name;
	OUTPUT:
		RETVAL

short
fts_namelen(f)
	File::Ftsent	f

	PROTOTYPE: $

	CODE:
		RETVAL = f->fts_namelen;
	OUTPUT:
		RETVAL

short
fts_level(f)
	File::Ftsent	f

	PROTOTYPE: $

	CODE:
		RETVAL = f->fts_level;
	OUTPUT:
		RETVAL

int
fts_errno(f)
	File::Ftsent	f

	PROTOTYPE: $

	CODE:
		RETVAL = f->fts_errno;
	OUTPUT:
		RETVAL

long
fts_number(f)
	File::Ftsent	f

	PROTOTYPE: $

	CODE:
		RETVAL = f->fts_number;
	OUTPUT:
		RETVAL

void*
fts_pointer(f)
	File::Ftsent	f

	PROTOTYPE: $

	CODE:
		RETVAL = f->fts_pointer;
	OUTPUT:
		RETVAL

File::Ftsent
fts_parent(f)
	File::Ftsent	f

	PROTOTYPE: $

	CODE:
		RETVAL = f->fts_parent;
	OUTPUT:
		RETVAL

File::Ftsent
fts_link(f)
	File::Ftsent	f

	PROTOTYPE: $

	CODE:
		RETVAL = f->fts_link;
	OUTPUT:
		RETVAL

File::Ftsent
fts_cycle(f)
	File::Ftsent	f

	PROTOTYPE: $

	CODE:
		RETVAL = f->fts_cycle;
	OUTPUT:
		RETVAL


