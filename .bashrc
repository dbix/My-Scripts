#!/bin/sh

#  .bashrc
#
#
#  Created by Derek Bixler on 8/5/14.
#

###############################################################################
# Alias(es)                                                                   #
###############################################################################
export alias matlab='matlab -nodesktop'  # Launch MATLAB on the command line
export alias pos='port search' # Lazy port search
export alias poi='sudo port install' # Lazy port install
export alias python2="/usr/local/bin/python2.7"  # My python of second choice
export alias python="/usr/local/bin/python3.4" # My python of choice
export alias topl='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
export alias lw='ls -la ${pwd} | grep' # list files with word
export alias la='ls -la' # list all including hidden


# Print entire alias list to stdout
function listalias()
{
    echo "matlab='matlab -nodesktop'"
    echo "pos=   'port search'"
    echo "poi=   'sudo port install'"
    echo "python='/opt/local/bin/python3'"
    echo "topl=  'ps wwaxr -o pid,stat,%cpu,time,command | head -10'"
    echo "lw=    'ls -la ${pwd} | grep'"
    echo "la=    'ls -la'"
}

export ALIAS_INIT=true

###############################################################################
# Variables                                                                   #
###############################################################################
# Yours truly
export USERNAME="dbixler"

# My bash todo list
export TODO="/Users/dbixler/.todo"

# Programs
export EDITOR="/usr/bin/nano"
export MP_EDITOR="/usr/local/bin/bbedit"
export SHELL="/opt/local/bin/bash"

# SDK locations
export DROID_SDK="/Applications/Android/sdk"
export JDK_HOME="Library/Java/JavaVirtualMachines/jdk1.8.0_11.jdk"
export JRE_PATH="$JDK_HOME/Contents/Home/jre"

# Locations of common folders
export DRIVE="/Users/dbixler/Google Drive"
export SCRIPTS="$DRIVE_HOME/src/scripts"
export DEVELOPER="/Users/dbixler/Google Drive/Developer"
export PROJ="/Users/dbixler/Google Drive/Developer/proj"
export SNIPPETS="/Users/dbixler/Google Drive/Developer/snippets"

# SDK executable locations
export JS_HOME="/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current"
export MATLAB_JAVA="$JDK_HOME/Contents/Home/jre"
export PYTHON_HOME="/opt/local/Library/Frameworks/Python.framework/Versions/2.7"
export PYTHON3_HOME="/opt/local/Library/Frameworks/Python.framework/Versions/3.4"

if [[ "$PYTHON_PREFIX" -eq "$PYTHON2_HOME" ]]
then
    export PYTHONPATH=(
    "$PYTHON2_HOME/lib/python27.zip"
    "$PYTHON2_HOME/lib/python2.7"
    "$PYTHON2_HOME/lib/python2.7/plat-darwin"
    "$PYTHON2_HOME/lib/python2.7/lib-dynload"
    "$PYTHON2_HOME/lib/python2.7/site-packages")

elif [[ "$PYTHON_PREFIX" -eq "$PYTHON3_HOME" ]]
then
    export PYTHONPATH=(
    "$PYTHON3_HOME/lib/python34.zip"
    "$PYTHON3_HOME/lib/python3.4"
    "$PYTHON3_HOME/lib/python3.4/plat-darwin"
    "$PYTHON3_HOME/lib/python3.4/lib-dynload"
    "$PYTHON3_HOME/lib/python3.4/site-packages")
else
    echo "ERROR: PYTHONPATH not configured"
fi

# Necessary for bash completion
if [[ -f /opt/local/etc/profile.d/bash_completion.sh ]];
then . /opt/local/etc/profile.d/bash_completion.sh
     echo "Bash completion is on. You're welcome."
fi

export BSHRC_INIT=true

