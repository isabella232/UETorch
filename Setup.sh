#!/bin/bash
# set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "=== Checking out the baseline UE4 commit... ==="
git checkout 4.8
#git checkout c4001bc95e3e6490c31f0d8dd0699ea2f22e3661
#git checkout 648eec4314879fc6e2d7aea767fade0f9e446c36

echo "=== Patching UE4 ==="
cd $DIR/../../..
git apply $DIR/UnrealEngine.patch

echo "=== Setting up Lua... === "
### alternative approach: download lua-5.2.4
# cd $DIR/../ScriptPlugin/Source/Lua
# curl -R -O http://www.lua.org/ftp/lua-5.2.4.tar.gz
# tar zxf lua-5.2.4.tar.gz
# cd lua-5.2.4
# make CFLAGS='-fPIC -DLUA_USE_LINUX' linux test
LUA=`which lua`
if [ $? != 0 ]; then
  echo "Couldn't find Lua. Did you forget to install torch and run torch-activate?"
  exit 1
fi

TORCH_BIN=`dirname $LUA`
if [ ! -f "$TORCH_BIN/../include/lua.h" ]; then
  echo "Couldn't find lua.h relative to lua. Did you forget to install torch and run torch-activate?"
  exit 1
fi

cd $DIR/../ScriptPlugin/Source/Lua
ln -sfT $TORCH_BIN/.. install
