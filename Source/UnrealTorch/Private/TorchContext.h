/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#pragma once

#include "LuaIntegration.h"

#if WITH_LUA

class FTorchContext : public FLuaContext
{
protected:
	lua_State * LuaState; // override, changing visibility from private

	static FTorchContext* Create(const FString& SourceCode, UObject* Owner);

	bool CallFunctionString(const FString& FunctionName, FString In, FString& Out);

	// void BeginPlay();
	// void Tick(float DeltaTime);
	// void Destroy();
};

class FTorchUtils {
	// static bool CallModuleFunction(lua_State* LuaState, const ANSICHAR* PackageName, const ANSICHAR* FunctionName);
	static bool CallFunctionString(lua_State* LuaState, const ANSICHAR* FunctionName, const ANSICHAR* In, FString& Out);
};

#endif // WITH_LUA
