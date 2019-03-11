#!/bin/bash

echo "Hello! which version would you like to upgrade"
echo "For Example: artifactory-pro-6.6.1"

read version

echo "Thanks for your input"
echo "The Upgradation will start now"

PLAYBOOK_FILE="Download.yml"
INVENTORY_FILE="all"
EXTRA_ARGS="-e "version=$version""

SOURCE_DIR=$(pwd)
DESTINATION_DIR=/home/devops/Playbooks
LOGFILE=$SOURCE_DIR/update.log


########################## CODE

echo "Starting log" >> $LOGFILE

echo "Reading the playbook... " >> $LOGFILE

cd $DESTINATION_DIR/

ansible-playbook $PLAYBOOK_FILE -i hosts/$INVENTORY_FILE $EXTRA_ARGS >> $LOGFILE

echo OK >> $LOGFILE

echo "Ending log" >> $LOGFILE

