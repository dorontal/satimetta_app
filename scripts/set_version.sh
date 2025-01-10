#!/bin/bash

# Destructively replaces - in all files listed in the variable
# $FILES_WITH_VERSION - the string in file $VERSION_FILENAME with a new
# string such that the last integer after the dot in the old string
# gets incremented by 1 (or, if the old string does not end with a dot
# followed by positive integer, tacks on a '.1' to the end of the old
# string).

# 1st arg: old version string that we want to replace
FROM_VERSION="$1"

# 2nd arg: new version string that we are replacing with
TO_VERSION="$2"

# path of this script
MY_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# path of the app ionic project root directory as created by ionic-start
GIT_ROOT="`$MY_DIR/git_root.sh`"

PROJECT_ROOT="$MY_DIR/../../$GIT_ROOT/"

VERSION_FILE="$PROJECT_ROOT/VERSION"

if [ ! -e "$VERSION_FILE" ]; then
    echo "Error: path mismatch, exiting ..."
    exit 1
fi

# Files in which you want the version number incremented - the paths
# of these files must be relative to the project root (i.e. they must
# be relative to the parent directory of where this script resides).
# ASSUMPTION: filenames here do not have spaces in them.
FILES_WITH_VERSION="
        $PROJECT_ROOT/VERSION
        $PROJECT_ROOT/package.json
        $PROJECT_ROOT/src/app/pages/about/about.page.ts
        $PROJECT_ROOT/pubspec.yaml
        $PROJECT_ROOT/src/polyfills.ts
"

# string-replace
SEDSTR="s/$FROM_VERSION/$TO_VERSION/g"

for file in $FILES_WITH_VERSION; do
    if [ -e $file ]; then
        sed -i~ $SEDSTR $file
    fi
done
