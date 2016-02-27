#!/bin/bash
sourced=$BASH_SOURCE
# set -e

if [[ $sourced == $0 ]]; then
  echo "ERROR: This script should be sourced"
fi

UE_SCRIPTS_DIR="$(dirname $(readlink -f $sourced))/Scripts"
echo "UE_SCRIPTS_DIR: $UE_SCRIPTS_DIR"

# this is the entry point for unreal engine to enter the Lua script
export LUA_PATH="$UE_SCRIPTS_DIR/?.lua;$UE_SCRIPTS_DIR/?/init.lua;$LUA_PATH"

