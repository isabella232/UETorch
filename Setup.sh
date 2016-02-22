#!/bin/bash
# set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "=== Checking out the baseline UE4 commit... ==="
git checkout 4.8
#git checkout c4001bc95e3e6490c31f0d8dd0699ea2f22e3661
git checkout 648eec4314879fc6e2d7aea767fade0f9e446c36

echo "=== Patching UE4 ==="
cd $DIR/../../..
git apply $DIR/UnrealEngine.patch

echo "=== Setting up Lua... === "
cd $DIR/../ScriptPlugin/Source/Lua
curl -R -O http://www.lua.org/ftp/lua-5.2.4.tar.gz
tar zxf lua-5.2.4.tar.gz
cd lua-5.2.4
make CFLAGS='-fPIC' linux test

