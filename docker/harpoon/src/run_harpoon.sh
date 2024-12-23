#! /usr/bin/env sh 

# convenience script that automatically sets proper
# environment up for harpoon.  use this script if you don't
# know how dynamic loading works and what environment
# variables are needed.

prefix=/usr/local/harpoon
harpoonpath=${prefix}
pluginpath=${harpoonpath}/plugins

os=`uname -s`

if test ${os} == Darwin; then
    export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:${pluginpath};
else
    export LD_LIBRARY_PATH=${pluginpath};
fi

${harpoonpath}/harpoon $*

