
# UnrealTorch
UnrealTorch is a ... and solves ...

## Examples
...

## Requirements
UnrealTorch requires or works with
* Mac OS X or Linux
* ...


## Installing UnrealTorch
1. Download and install torch from https://github.com/torch/torch-distro. We would like to use Lua 5.2, so before installing, replace LUAJIT21 with LUA52 in install<span></span>.sh.
2. Set up an Epic Games account at https://github.com/EpicGames/UnrealEngine/, needed to download Unreal Engine.
3. Visit https://wiki.unrealengine.com/Building_On_Linux to learn how to configure your system for running Unreal Engine on Linux.
4. Install UnrealEngine / UnrealTorch

```bash
git clone https://github.com/EpicGames/UnrealEngine.git
cd UnrealEngine
# UnrealTorch was written for UnrealEngine-4.8
git checkout 4.8
./Setup.sh && ./GenerateProjectFiles.sh

# clone UnrealTorch into the plugins directory
git clone https://github.com/facebook/UnrealTorch.git Engine/Plugins/UnrealTorch
Engine/Plugins/UnrealTorch/Setup.sh

# grab some coffee, this will take a long time
make
```

5. Profit!

## Getting Started with UnrealTorch

![alt text](Resources/Screenshots/ut_setup.png "Screenshot 1")
![alt text](Resources/Screenshots/ut_select_fpc.png "Screenshot 2")
![alt text](Resources/Screenshots/fpc.png "Screenshot 3")
![alt text](Resources/Screenshots/torchplugin_module.png "Screenshot 4")

## Full documentation
...

## Join the UnrealTorch community
TODO

## License
UnrealTorch is BSD-licensed. We also provide an additional patent grant.
