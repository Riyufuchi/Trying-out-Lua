package.path = package.path .. ";../?.lua"
local qSort = require("sorting/quickSort")
local bSort = require("sorting/bubbleSort")
local fileHelper = require("utils/fileHelper")
local bi = require("math/binomicDist")

function main()
	fileContent = fileHelper.readFile("../bin/outputs/functionXY.csv")
	numbers1 = {}
	len = #fileContent
	for i = 1, len - 1 do
		numbers1[i] = string.sub(fileContent[i + 1], string.find(fileContent[i + 1], ";") + 1, #fileContent[i + 1])
	end
	numbers2 = table.clone(numbers1)
	--numbers2[0] = numbers1[0]
	--print(numbers1[1].." "..numbers2[1])
	quickEndTime = 0
	quickStartTime = os.clock()
	qSort.sort(numbers1)
	quickEndTime = os.clock()

	bubbleEndTime = 0
	bubbleStartTime = os.clock()
	bSort.sort(numbers2)
	bubbleEndTime = os.clock()

	showResult("QuickSort", quickStartTime, quickEndTime)
	showResult("BubbleSort", bubbleStartTime, bubbleEndTime)
end

function showResult(label, startTime, endTime)
	print(label.." "..endTime.." - "..startTime.." = "..string.format("%f", (endTime - startTime)))
end

function table.clone(orginalTable)
	return {table.unpack(orginalTable)}
end

main()
