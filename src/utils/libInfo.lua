local libInfo = {}

function libInfo.libVersion()
	return "4.2"
end

function libInfo.aboutLib()
	return "LuaFunKit Library version " ..libInfo.libVersion().. "\nCreated by Riyufuchi (c) 2021 - 2024 \nhttps://github.com/Riyufuchi/Trying-out-Lua"
end

return libInfo
