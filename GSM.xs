#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <gsm.h>

#include "const-c.inc"

int gsm_setoption(gsm handle, int option, int value) {
    return gsm_option(handle, option, &value);
}

int gsm_getoption(gsm handle, int option) {
    return gsm_option(handle, option, NULL);
}

MODULE = Audio::GSM		PACKAGE = Audio::GSM

INCLUDE: const-xs.inc

gsm
gsm_create()

int
gsm_decode(arg0, arg1, arg2)
	gsm	arg0
	gsm_byte *	arg1
	gsm_signal *	arg2

void
gsm_destroy(arg0)
	gsm	arg0

void
gsm_encode(arg0, arg1, arg2)
	gsm	arg0
	gsm_signal *	arg1
	gsm_byte *	arg2

#int
#gsm_explode(arg0, arg1, arg2)
#	gsm	arg0
#	gsm_byte *	arg1
#	gsm_signal *	arg2

#void
#gsm_implode(arg0, arg1, arg2)
#	gsm	arg0
#	gsm_signal *	arg1
#	gsm_byte *	arg2

#int
#gsm_option(arg0, arg1, arg2)
#	gsm	arg0
#	int	arg1
#	int *	arg2

int
gsm_setoption(handle, option, value)
	gsm	handle
	int	option
	int	value

int
gsm_getoption(handle, option)
	gsm	handle
	int	option
