#!/bin/bash

# Returns an empty string, only if everything went perfectly.

GIT_ROOT="`git rev-parse --show-toplevel`"
REPO="`basename $GIT_ROOT`"

res="`git status 2>&1`"
if [ "`echo $res | grep \"Your branch is up.to.date\"`" == "" ]; then
    echo "$REPO:not up to date with master"
    exit 1
fi
if [ "`echo $res | grep Changes`" != "" ]; then
    # changes were made
    echo "$REPO:changes"
fi
if [ "`echo $res | grep Untracked`" != "" ]; then
    # untracked files were found
    echo "$REPO:untracked files"
fi
