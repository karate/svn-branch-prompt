#!/usr/bin/env bash

# The following will return either 'trunk' or 'branches'
URL=$(svn info 2> /dev/null | grep '^URL')
if [ "$?" == "0" ]; then
  STATE=$(echo $URL | grep -o 'trunk\|branches')

  if [ "$STATE" == "trunk" ]; then
    echo -n "[trunk]"
  else
    # Get branch name
    BRANCH=$(echo $URL | grep -Po '(?<=branches/)[\w-_]+')
     echo -n "[$BRANCH]"
  fi
fi
