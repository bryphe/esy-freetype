#!/bin/bash

set -e
set -u
set -o pipefail

TARGET=_prebuilt/
mkdir -p $TARGET

case $(uname) in
    Darwin*)
    mv platform-darwin/* $TARGET
    ;;
    Linux*)
    mv platform-linux/* $TARGET
    ;;
    *)
    mv platform-win32/* $TARGET
    ;;
esac

echo Installed $cur__name to $TARGET
