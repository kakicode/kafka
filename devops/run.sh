#!/bin/sh

devops_folder=$(dirname $(readlink -f $0))
base_folder=$(dirname $devops_folder)

. $devops_folder/VARS.sh

docker run -d -h $HOST --name $CONTAINER -p $KFK_PORT:$KFK_PORT --link $ZK_CONTAINER:$ZK_HOST $IMAGE:$IMAGE_VERSION
