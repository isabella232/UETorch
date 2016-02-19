#!/bin/bash
# set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Setting up Lua..."
cd $DIR/../ScriptPlugin/Source/Lua
curl -R -O http://www.lua.org/ftp/lua-5.2.4.tar.gz
tar zxf lua-5.2.4.tar.gz
cd lua-5.2.4
make linux test

echo "Patching UnrealEngine"
cd $DIR/../../..
git apply $DIR/UnrealEngine.patch
