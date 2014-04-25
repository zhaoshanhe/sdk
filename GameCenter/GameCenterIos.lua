--[[
	
	-- @authors shan
	-- @date:2014-04-21 19:33:30

]]
local GameCenterIos = {}

local SDK_GLOBAL_NAME = "GameCenterIos"
local SDK_CLASS_NAME = "GameCenterIos"

local sdk = cc.PACKAGE_NAME[SDK_GLOBAL_NAME]




function GameCenterIos.gcLogin( )
	if(device.platform == "ios") then
	    luaoc.callStaticMethod(SDK_CLASS_NAME, "gcLogin")
	end
end


function GameCenterIos.gcShowAchievements( ... )
	if(device.platform == "ios") then
		return luaoc.callStaticMethod(SDK_CLASS_NAME, "gcShowAchievements")
	end
end

function GameCenterIos.gcPostAchievement( idName, percentComplete )
	if(device.platform == "ios") then
	    local args = { idName = idName, percentComplete = percentComplete}

	    luaoc.callStaticMethod(SDK_CLASS_NAME, "gcPostAchievement", args)
	end
end

function GameCenterIos.gcClearAllAchivements( ... )
	if(device.platform == "ios") then
		luaoc.callStaticMethod(SDK_CLASS_NAME, "gcClearAllAchivements")
	end
end


function GameCenterIos.gcShowScores( idName )
	if(device.platform == "ios") then
		local args = { idName = idName }
		return luaoc.callStaticMethod(SDK_CLASS_NAME, "gcShowScores", args)
	end
end

function GameCenterIos.gcPostScore( idName, score )
	if(device.platform == "ios") then
		print("idName:" .. idName .. "," .. score)
	    local args = { idName = idName, score = tonumber(score)}

	    luaoc.callStaticMethod(SDK_CLASS_NAME, "gcPostScore", args)
	end
end


function GameCenterIos.gcClearAllScores( ... )
	if(device.platform == "ios") then
		luaoc.callStaticMethod(SDK_CLASS_NAME, "gcClearAllScores")
	end
end

return GameCenterIos