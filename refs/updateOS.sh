#!/bin/bash

# Extract current directories
if [ "`dirname $0`" == "." ]; then
	export ORG_DIR="${PWD}"
else
	export ORG_DIR="${PWD}/`dirname $0`"
fi

source ${ORG_DIR}/header.sh

sudo ${PKG_MANAGER} ${PKG_MANAGER_UPDATE}
sudo ${GRUB_MKCONFIG}
