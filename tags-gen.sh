#! /bin/bash

if (( $# != 2 ))
then
  echo "$0 code_dir title"
  exit
fi

cd $1 || { echo "chdir $1 failed" && exit; }
gtags
#htags --auto-completion -fFDnvxhost $2
htags -fFDnvhost $2
