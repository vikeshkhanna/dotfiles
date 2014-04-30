#!/bin/tcsh
setenv LD_LIBRARY_PATH
setenv LD_LIBRARY_PATH ~/.local/lib:${LD_LIBRARY_PATH}

setenv C_INCLUDE_PATH
setenv C_INCLUDE_PATH ~/.local/include:${C_INCLUDE_PATH}

setenv CPLUS_INCLUDE_PATH
setenv CPLUS_INCLUDE_PATH ~/.local/include:${CPLUS_INCLUDE_PATH}

setenv PATH ~/.local/bin/:${PATH}

# Prompt
USER_COLOR='\[\e[1;92m\]'; # Bold High Intensity Green
DIR_COLOR='\[\e[1;94m\]';  # Bold High Intensity Blue
#
PS1="$USER_COLOR\\u@\\h\[\e[m\] $DIR_COLOR\\w\[\e[m\] $ "

# # Python
setenv PYTHONSTARTUP ~/.pythonrc
