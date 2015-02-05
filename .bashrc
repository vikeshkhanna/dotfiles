#!/bin/bash
export LD_LIBRARY_PATH=~/.local/lib:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=~/.local/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=~/.local/include:$CPLUS_INCLUDE_PATH
export PATH=~/.local/bin/:$PATH
export PATH=$HOME/Library/Haskell/bin:$PATH

export JAVA_HOME="`/usr/libexec/java_home -v '1.7*'`"

# Prompt
USER_COLOR='\[\e[1;92m\]'; # Bold High Intensity Green
DIR_COLOR='\[\e[1;94m\]';  # Bold High Intensity Blue

PS1="$USER_COLOR\\u@\\h\[\e[m\] $DIR_COLOR\\w\[\e[m\] $ "

# Python
export PYTHONSTARTUP=~/.pythonrc
export PATH=/Users/vikeshkhanna/bin/giraph/giraph-debugger:/Users/vikeshkhanna/bin/hadoop/bin:$PATH

# Stanford-related
alias corn="ssh vikesh@corn.stanford.edu"
alias cornx="ssh vikesh@corn.stanford.edu -X"
