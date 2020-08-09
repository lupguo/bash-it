#!/usr/bin/env bash

function prompt_command() {
  PS1="\n[\[\e[32m\]\u\[\e[0m\]@\[\e[35m\]\h \[\e[36;1m\]\w\[\e[0m\]] \
$(RETVAL="$?";
  echo -en "\e[33m{$(date +'%H:%M:%S')}"
  echo -en "\e[0m$(scm_prompt_info) "
  if [ "$RETVAL" == "0" ];then
    echo -en "\[\e[32m\]($RETVAL)"
  else
    echo -en "\[\e[31;1m\a\]($RETVAL)"
  fi
)
\[\e[0;1;34m\]\$ \[\e[0m\]"
}

safe_append_prompt_command prompt_command
