#!/bin/bash

ROOT_DIR=`dirname $(readlink -f $0)`
DEST=`pwd`
PREFIX="vcpe_"

DIRS="infra vbrgemu vbng vgmux vgw"

for dir in $DIRS; do
    cd $ROOT_DIR/$dir
    zip -r $ROOT_DIR/$dir/$dir.csar artifacts/ TOSCA-Metadata/ onap_dm.yaml $PREFIX$dir.yaml ubuntu_16.04
    rm -f $DEST/$dir.csar
    mv $ROOT_DIR/$dir/$dir.csar $DEST/
done
