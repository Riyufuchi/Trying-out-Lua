package.path = package.path .. ";../?.lua"
local qSort = require("sorting/quickSort")
local qSort2 = require("sorting/quickSortV2")
local bSort = require("sorting/bubbleSort")
local fileHelper = require("utils/fileHelper")

function main()
	fileContent = fileHelper.readFile("../bin/outputs/functionXY.csv")
	numbers1 = {}
	len = #fileContent
	for i = 1, len - 1 do
		numbers1[i] = string.sub(fileContent[i + 1], string.find(fileContent[i + 1], ";") + 1, #fileContent[i + 1])
	end
	numbers2 = table.clone(numbers1)
	numbers3 = table.clone(numbers1)
	qSortFunc = function(param) qSort.sort(param) end
	qSortV2Func = function(param) qSort2.sort(param) end
	bSortFunc = function(param) bSort.sort(param) end
	makro(qSortFunc, numbers1, "QuickSort")
	makro(qSortV2Func, numbers2, "QuickSort2")
	makro(bSortFunc, numbers3, "BubbleSort")
end

function makro(sortFunc, data, label)
	timeEnd = 0
	timeStart = os.clock()
	sortFunc(data)
	timeEnd = os.clock()
	print(label..": "..timeEnd.." - "..timeStart.." = "..string.format("%f", (timeEnd - timeStart)))
end

function table.clone(orginalTable)
	return {table.unpack(orginalTable)}
end

main()
