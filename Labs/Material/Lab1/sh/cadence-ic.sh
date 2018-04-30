#!/bin/sh
# Config script for Cadence-ic
# Source this file before running icfb or runcad:
# > source /net/ictools/sh/cadence-ic.sh
#
# If you want to specify an alternate path to the Cadence IC package,
#   add something like this to your .bashrc:
# export CDSHOME=/net/ictools/cadence/ic_5141

default_loc=`readlink -f /net/ictools/cadence/ic_current`

basedir=/net/ictools

source $basedir/sh/license-add.sh 5280

# If package location not specified, use this default:
if [ ! $CDSHOME ] ; then
    export CDSHOME=$default_loc
elif [ $CDSHOME != $default_loc ] ; then
    echo "$0: Overwriting execution path since CDSHOME=$CDSHOME" 1>&2
fi

# If cadence is already in the path, remove it:
source $basedir/sh/path-strip.sh ic_
source $basedir/sh/path-strip.sh ic5

# Add IC package to the path:
icpath="$CDSHOME/tools/dfII/bin:$CDSHOME/tools/bin"
if [[ $PATH == *cadence* ]] ; then
    # If there are other cadence tools in the path, 
    #   place the "IC" package ahead of them.
    export PATH=`echo $PATH | sed "s|[^:]*cadence.*|${icpath}:&|"`
else
    # Add cadence to the end of the path: 
    export PATH=${PATH}:$icpath
fi

export CDS_Netlisting_Mode=Analog
export SPECTRE_NEWPARSER=1
# Location of NCSU add on toolkit
export CDK_DIR=/net/ictools/cadence/ncsu-cdk
#export CDS_SITE=/net/ictools/cadence/ncsu-cdk
### If you don't want NCSU, add this to your .bashrc: (after this script)
# unset CDK_DIR

# 64-bit binaries seem to not be complete - breaks the STM kits
if [ `uname -i` == "x86_64" ] ; then
    export CDS_AUTO_64BIT=NONE
fi

export PATH=${PATH}:/net/ictools/cadence/IC615/bin

