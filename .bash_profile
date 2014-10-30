#!/bin/sh

#  .bash_profile
#
#
#  Created by Derek Bixler on 8/5/14.
#

###############################################################################
# Bash Profile                                                                #
###############################################################################

export FUNCS_INIT=false
export BSHRC_INIT=false
export PATHS_INIT=false
export COLOR_INIT=false
export ALIAS_INIT=false

ERR_MSG_FUNCS="ERROR: functions file failed to initialize. You may try the
  restart command and see if it fixes the problem. Also check stdout for error
  messages."

ERR_MSG_PATHS="ERROR: paths file failed to initialize. You may try the
  restart command and see if it fixes the problem. Also check stdout for error
  messages."

ERR_MSG_BASHR="ERROR: bashrc file failed to initialize. You may try the
  restart command and see if it fixes the problem. Also check stdout for error
  messages"

ERR_MSG_COLOR="ERROR: bashrc file failed to initialize. You may try the
  restart command and see if it fixes the problem. Also check stdout for error
  messages"

MSG_GREETING="
___________             __   .__                                               
\_   _____/_ __   ____ |  | _|__| ____    ____                                 
 |    __)|  |  \_/ ___\|  |/ /  |/    \  / ___\                                
 |     \ |  |  /\  \___|    <|  |   |  \/ /_/  >                               
 \___  / |____/  \___  >__|_ \__|___|  /\___  /                                
     \/              \/     \/       \//_____/                                 
          _________                                                            
         /   _____/_  _  _______     ____                                      
         \_____  \\ \/ \/ /\__  \   / ___\                                     
         /        \\     /  / __ \_/ /_/  >                                    
        /_______  / \/\_/  (____  /\___  /                                     
                \/              \//_____/                                      

"

source .bashrc
source .bash_paths
source .bash_funcs
source .bash_colors


if    [ ! "$FUNCS_INIT"   ];
then echo "$ERR_MSG_FUNCS"
elif  [ ! "$BSHRC_INIT"   ];
then echo "$ERR_MSG_BSHRC"
elif  [ ! "$PATHS_INIT"   ];
then echo "$ERR_MSG_PATHS"
elif  [ ! "$COLOR_INIT"   ];
then echo "$ERR_MSG_COLOR"
else echo "$MSG_GREETING"
     echo "Welcome back $USER!"
fi

