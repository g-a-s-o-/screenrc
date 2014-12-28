#!/bin/sh
SHELL=zsh
PATH_OF_SHELL=`which ${SHELL}`

CWD=`dirname $0`
echo ${CWD}
SCRIPT_DIR=`cd ${CWD} && pwd`
echo ${SCRIPT_DIR}

echo "Creating ~/.screenrc"
cp ${SCRIPT_DIR}/screenrc ~/.screenrc

sed -i -e "s!PATH_TO_SHELL!${PATH_OF_SHELL}!" ~/.screenrc
