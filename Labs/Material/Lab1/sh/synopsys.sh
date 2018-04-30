#!/bin/sh
# Synopsys configuration.
# Author - Dirk
# I am trying to follow the online guide:
# http://www.synopsys.com/support/installation/install_guide.html

# If you source this script with no arguments, 
# all synopsys tools will be configured.
# If you would like less added to your path, you can specify which
# tools you would like configured on the command line. Example:
# source /net/ictools/bin/synopsys.sh hspice syn starRCXT astro

source /net/ictools/sh/license-add.sh 7326

SYN=/net/ictools/synopsys  # Base directory, just used in this script
SYN2=/net/ictools/synopsys12

# Strip any mention of synopsys from the path
source /net/ictools/sh/path-strip.sh 'synopsys'

# Synthesis
if (( $# == 0 )) || [[ $* == *syn* ]]
then
    if ! which design_vision >/dev/null 2>&1
    then
        export PATH=${PATH}:${SYN}/synthesis/bin
        export PATH=${PATH}:${SYN2}/F-2011.09_custExplorer/bin
    fi
fi

# TetraMAX 
# tmax insists on having SYNOPSYS pointing to it. Grrr.
export SYNOPSYS=$SYN/tetramax
# If "Tetramax" or "tmax" was specified as a script argument,
# or there weren't any arguments, add tmax to the path...
if (( $# == 0 )) || [[ $* == *max* ]]
then
    export PATH=${PATH}:$SYN/tetramax/bin
fi

# coreTools, sold documentation - this is always added to path
export PATH=${PATH}:${SYN}/coreTools/bin

# Synopsys common licensing
if (( $# == 0 )) || [[ $* == *scl* ]]
then
    if ! which lmstat >/dev/null 2>&1
    then
        export PATH=${PATH}:${SYN}/scl/linux/bin
    fi
fi

# Astro - includes JupiterXT, milkyway, hercules
if (( $# == 0 )) || [[ $* == *astro* ]]
then
    export PATH=${PATH}:${SYN}/astro/bin/IA.32
fi

# Astro Rail
# Looks like a stripped down version of astro to me. Let me know if I am wrong.
# Find it in /net/ictools/synopsys/REDUNDANT -- Dirk

# Aurora
if (( $# == 0 )) || [[ $* == *aurora* ]]
then
    export PATH=${PATH}:${SYN}/aurora/bin
fi

# CSS - System Studio (code compiler)
if (( $# == 0 )) || [[ $* == *css* ]]
then
    export SYNOPSYS_CCSS=${SYN}/css/linux/ccss
    export CCSS_SIM_DIR=/local/ccss/sim  # Simulation output directory
    export PATH=${PATH}:${SYNOPSYS_CCSS}/bin
fi

# ESP  - only works on 32 bit systems
if (( $# == 0 )) || [[ $* == *exp* ]]
then
    export PATH=${PATH}:${SYN}/esp/bin
fi

# Formality
if (( $# == 0 )) || [[ $* == *formality* ]]
then
    export PATH=${PATH}:${SYN}/formality/bin
fi

# HSim
if (( $# == 0 )) || [[ $* == *hsim* ]]
then
    export PATH=${PATH}:${SYN}/hsim/hsimplus/bin
fi

# HSpice, simif
if (( $# == 0 )) || [[ $* == *hspice* ]]
then
    export PATH=${PATH}:${SYN}/hspice/bin
    export SNPS_SIMIF=${SYN}/simif
    if ! which simif >/dev/null 2>&1
    then
        export PATH=${PATH}:${SYN}/simif/bin
    fi
fi

# Leda
if (( $# == 0 )) || [[ $* == *leda* ]]
then
    export LEDA_PATH=${SYN}/leda
    export PATH=${PATH}:${SYN}/leda/bin
fi

# NanoChar
if (( $# == 0 )) || [[ $* == *nanochar* ]]
then
    export MTB_TPATH=${SYN}/nanochar/linux
    export PATH=${PATH}:${SYN}/nanochar/linux
fi

# NanoSim - Doesn't overwrite SNPS_SIMIF settings for simif
if (( $# == 0 )) || [[ $* == *nanosim* ]]
then
    if ! [ $SNPS_SIMIF ]
    then
        export SNPS_SIMIF=${SYN}/nanosim
    fi
    export PATH=${PATH}:${SYN}/nanosim/bin
fi

# PathMill
if (( $# == 0 )) || [[ $* == *pathmill* ]]
then
    export PATH=${PATH}:${SYN}/pathmill/linux/pm/bin
fi

# PrimeTime
if (( $# == 0 )) || [[ $* == *primetime* ]]
then
    export PATH=${PATH}:${SYN}/pts/bin
fi

# Saber & Saber HDL - includes CosmoScope
if (( $# == 0 )) || [[ $* == *saber* ]]
then
    export PATH=${PATH}:${SYN}/saber/ai_bin
fi

# StarRCXT
if (( $# == 0 )) || [[ $* == *star* ]]
then
    export PATH=${PATH}:${SYN}/star-rcxt/bin
fi

# TCAD - includes Sentaurus?
# Might need more than this...
if (( $# == 0 )) || [[ $* == *tcad* ]]
then
    export STROOT=${SYN}/tcad
    export PATH=${PATH}:${SYN}/tcad/bin
fi

# Vera
if (( $# == 0 )) || [[ $* == *vera* ]]
then
    export VERA_HOME=${SYN}/vera
    export PATH=${PATH}:${VERA_HOME}/bin
fi

### Stuff from the "Y" collection (older than 2006.12)
# VCS-MX and Pioner-ntb
if (( $# == 0 )) || [[ $* == *vcs* ]]
then
    export VCS_HOME=${SYN}/vcs-mx
    export PATH=${PATH}:${VCS_HOME}/bin
fi

### Stuff from the "X" collection (older than 2005.12)
# tauruslayout taurusvisual taurusworkbench dfm_examples
# Didn't work in RHEL 4
#if (( $# == 0 )) || [[ $* == *vcs* ]]
#then
#  export PATH=${PATH}:${SYN}/taurus/bin
#fi
