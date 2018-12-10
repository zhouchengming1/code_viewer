#! /bin/bash

if (( $# != 2 ))
then
  echo "$0 code_dir title"
  exit
fi

cd $1 || { echo "chdir $1 failed" && exit; }
if ! $(which gtags)
then
  apt-get install global || exit
fi
/usr/bin/gtags
#htags --auto-completion -fFDnvxhost $2
/usr/bin/htags -fFDnvhost $2