
# UnrealTorch
UnrealTorch is a ... and solves ...

## Examples
...

## Requirements
UnrealTorch requires or works with
* Mac OS X or Linux
* ...


## Installing UnrealTorch
# Install torch (https://github.com/torch/torch-distro). We would like to use Lua 5.2, so before installing, replace LUAJIT21 with LUA52 in install.sh.
# Set up an Epic Games account (https://github.com/EpicGames/UnrealEngine/), needed to download Unreal Engine.
# Visit https://wiki.unrealengine.com/Building_On_Linux to learn how to configure your system for running Unreal Engine on Linux.
# Install UnrealEngine / UnrealTorch
```bash
git clone https://github.com/EpicGames/UnrealEngine.git
cd UnrealEngine
git checkout 4.8
./Setup.sh && ./GenerateProjectFiles.sh

git clone https://github.com/facebook/UnrealTorch.git Engine/Plugins/UnrealTorch
Engine/Plugins/UnrealTorch/Setup.sh

# grab some coffee, this will take a long time
make
```
# Profit!


## How UnrealTorch works
...

## Full documentation
...

## Join the UnrealTorch community
* Website:
* Facebook page:
* Mailing list
* irc:
See the CONTRIBUTING file for how to help out.

## License
UnrealTorch is BSD-licensed. We also provide an additional patent grant.
