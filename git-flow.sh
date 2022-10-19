#!/usr/bin/env bash

getopts :v verbose

if [ "$verbose" = 'v' ]; then
  verbose="-$verbose"
else
  unset verbose
  if [ $# -ne 0 ]; then
    echo 'unkown argument(s) was passed'
  fi
fi

git add    $verbose .
echo -e '\n'

git commit $verbose --message='root 2'
echo -e '\n'

git pull   $verbose   origin master
echo -e '\n'

git rebase $verbose --interactive --root
echo -e '\n'

git push   $verbose --force origin master 
echo -e '\n'

