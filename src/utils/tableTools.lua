local tableTools = {}
local fileTools = require("utils/fileHelper")

function tableTools.tableToString(tbl)
	local keys = {}
    local result = "\t{"
    
    for key, _ in pairs(tbl) do
        table.insert(keys, key)
    end

    -- Sort the keys to maintain order
    table.sort(keys)

    for _, key in ipairs(keys) do
        local value = tbl[key]
        if type(value) == "string" then
            result = result .. key .. '="' .. value .. '", '
        else
            result = result .. key .. "=" .. tostring(value) .. ", "
        end
    end

    -- Remove the trailing comma and space
    result = result:gsub(", $", "")

    result = result .. " }"

    return result
end

function tableTools.prepLuaTableFile(tableName, table)
	local content = ""
	for i = 1, #table do
		content = content .. tableTools.tableToString(table[i]) .. "\n"
	end
	local fileContent = "local "..tableName.." = {\n" .. content .. "}\nreturn "..tableName
	return fileContent
end

function tableTools.printTableToFile(tableName, table)
	con = { tableTools.prepLuaTableFile(tableName, table) }
	fileTools.writeFile(tableName..".lua", con, 1)
end

return tableTools
