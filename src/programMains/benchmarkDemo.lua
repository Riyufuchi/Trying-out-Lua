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
	--numbers2[0] = numbers1[0]
	--print(numbers1[1].." "..numbers2[1])
	timeEnd = 0
	timeStart = os.clock()
	qSort.sort(numbers1)
	timeEnd = os.clock()
	showResult("QuickSort", timeStart, timeEnd)

	timeEnd = 0
	timeStart = os.clock()
	qSort2.sort(numbers2)
	timeEnd = os.clock()
	showResult("QuickSort2", timeStart, timeEnd)

	timeEnd = 0
	timeStart = os.clock()
	bSort.sort(numbers3)
	timeEnd = os.clock()
	showResult("BubbleSort", timeStart, timeEnd)
end

function showResult(label, startTime, endTime)
	print(label..": "..endTime.." - "..startTime.." = "..string.format("%f", (endTime - startTime)))
end

function table.clone(orginalTable)
	return {table.unpack(orginalTable)}
end

main()
