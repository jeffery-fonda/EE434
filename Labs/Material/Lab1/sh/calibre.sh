#!/bin/sh
# Config script for Mentor Calibre.
# Source this file before running calibre:
# > source /net/ictools/sh/mentor-calibre.sh
#
# If you want to specify an alternate path to the Mentor Calibre package,
#   add something like this to your .bashrc:
# export CALIBRE_HOME=/net/ictools/mentor/ixl_cal_2007.2_34.24

# Determine the platform architecture:
if [ `uname -i` == "x86_64" ] ; then
    export USE_CALIBRE_64=YES
fi

# Both 32-bit and 64-bit versions use the same install tree:
default_loc=`readlink -f /net/ictools/mentor/ixl_cal_current`

basedir=/net/ictools

source $basedir/sh/license-add.sh 1717

# If package location not specified, use this default:
if [ ! $CALIBRE_HOME ] ; then
    export CALIBRE_HOME=$default_loc
elif [ $CALIBRE_HOME != $default_loc ] ; then
    echo "$0: Overwriting execution path since CALIBRE_HOME=$CALIBRE_HOME" 1>&2
fi

# If Calibre is already in the path, remove it:
source $basedir/sh/path-strip.sh calibre
source $basedir/sh/path-strip.sh _cal_

# Add calibre to the end of the path:
#export MGC_HOME=$CALIBRE_HOME
export PATH="${PATH}:${CALIBRE_HOME}/bin"
