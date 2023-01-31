local fileHelper = {}

function fileHelper.readFile(fileName) --load file into table and returns it
	local content = {}
	local file, msg = io.open(fileName, "r") --opens file in read mode
	if not file then --checks if file was opened successfully
		print("Error: " ..msg)
		content[1] = msg
		return content
	end
	local index = 1
	local line = file:read("*line")
	while line do
		content[index] = line
		index = index + 1
		line = file:read("*line")
	end
	file:close()
	return content
end

function fileHelper.writeFile(fileName, output, startIndex)
	local file = fileHelper.openFile(fileName, "w+")
	if not file then return nil end
	local maxIndex = #output
	for i = startIndex, maxIndex do
		file:write(output[i] .."\n")
	end
	file:close()
end

function fileHelper.openFile(fileName, mode)
	local file, msg = io.open(fileName, mode)
	if not file then
		print("Error: " ..msg)
		return nil
	end
	return file
end

return fileHelper
