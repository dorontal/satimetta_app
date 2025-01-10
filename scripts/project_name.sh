#!/bin/bash

# Precondition: repo name == directory name of the parent of the
# directory that has this script

cd "$( dirname "${BASH_SOURCE[0]}" )/.." && basename `pwd`
