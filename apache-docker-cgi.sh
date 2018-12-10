#! /bin/bash

file=`readlink -f $0`
dir=`dirname $file`

# id -u username
# id -g username
# id -G username
# id username
uid=$1
# Use user namespace mapping to map root user

docker run \
--name code_viewer \
-d -p 8080:80 \
-v $dir:/var/www/html \
nimmis/apache-php7

# docker exec -ti <container id> /bin/bash
