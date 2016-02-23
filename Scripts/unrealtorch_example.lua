-------------------------------------------------------------------------------
-- Copyright (c) 2015-present, Facebook, Inc.
-- All rights reserved.
-- This source code is licensed under the BSD-style license found in the
-- LICENSE file in the root directory of this source tree. An additional grant
-- of patent rights can be found in the PATENTS file in the same directory.
-------------------------------------------------------------------------------

require 'unrealtorch'

local M = {}

-------------------------------------------------------------------------------
-- Initalization: start the Torch REPL
-------------------------------------------------------------------------------
function M.initialize()
   -- attempt to set the frame rate to 32 fps
   -- this will only work if UnrealEngine.patch has been applied
   local succ = SetTickDeltaBounds(1/32,1/32)

   print("\n-- UnrealTorch example --\n")
   print("At each tick, this script captures a small segmentation mask of all")
   print("the cubes. At each tick, if there's a cube in the vertical center line,")
   print("it moves forward; otherwise, it turns left.")
   print("")
   print("Type `go(5)` to run for 5 seconds and drop back into the REPL")
   print("or type break to leave the REPL. You can uncomment `start_repl()`")
   print("in this script to get rid of the REPL altogether.")
   print("")

   start_repl()
end
local cubes = {}
for i = 1, 11 do
   cubes[i] = GetActor(string.format('Cube%02d', i))
end

-------------------------------------------------------------------------------
-- Tick Hook: automatically move towards blocks
-------------------------------------------------------------------------------
local function ExampleTickHandler(dt)
   local seg = ObjectSegmentation(cubes, 8)
   local centerStrip = seg:select(2, math.floor(seg:size(2)/2))
   if centerStrip:sum() > 0 then
      -- if there's a block in the middle of the screen move to it
      TapKey('Up')
   else
      -- otherwise, turn left until you find a block
      TapKey('Left')
   end
end

AddHook(ExampleTickHandler)

-------------------------------------------------------------------------------
-- Example Lua function that can be called from blueprints using the
-- CallTorchFunctionString blueprints function.
-- https://docs.unrealengine.com/latest/INT/Engine/Blueprints/index.html
-------------------------------------------------------------------------------
function ExampleScriptFunction(x)
   return "Script Function called with x= " .. x
end

return M
