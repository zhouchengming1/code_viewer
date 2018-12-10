#! /bin/bash

file=`readlink -f $0`
dir=`dirname $file`
echo $dir

docker run \
--name code_viewer \
-d -p 8080:80 \
-v $dir:/var/www/html \
nimmis/apache-php7

# docker exec -ti <container id> /bin/bash
