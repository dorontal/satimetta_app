#!/bin/bash

MY_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

VERSION_FILE="$MY_DIR/../VERSION"
if [ ! -e $VERSION_FILE ]; then
    echo "Error: $VERSION_FILE does not exist, exiting ..."
    exit 1
fi  

OLD_VERSION="`cat $VERSION_FILE`"
LAST_NUM="`echo $OLD_VERSION | sed 's/.*\.//'`"
NEW_NUM="`echo $LAST_NUM "+1" | bc`"

NEW_VERSION="`echo $OLD_VERSION | perl -pe 's/(.*)\.\d+$/$1/'`.$NEW_NUM"
if [ "$NEW_VERSION" == "" ] || [ "$NEW_VERSION" == "$OLD_VERSION" ]; then
    echo "Error: Invalid new version number $NEW_VERSION, exiting ..."
    exit 1
fi  

# echo "Updating version last digit from $OLD_VERSION to $NEW_VERSION"
$MY_DIR/set_version.sh $OLD_VERSION $NEW_VERSION
