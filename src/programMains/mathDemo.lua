package.path = package.path .. ";../?.lua"
local bi = require("math/binomicDist")
local fce = require("math/f")
local conUtil = require("utilsCLI/code")
local qSort = require("sorting/quickSort")
local bSort = require("sorting/bubbleSort")
local fileHelper = require("utils/fileHelper")

function main()
	result = 0
	pX = 0;
	conUtil.createHeader("\v  What is a % chance of getting 2x 6 in 5 dice throws?\v")
	print("p(x) = (5 x) * (1/6)^x * (1 - 1/6)^(5 - x)")
	for i = 2, 5 do
		pX =  bi.distribute(i, 1/6, 5)
		print("p(" .. i ..") = " .. pX .. " => " .. pX * 100 .. "%")
		result = result + pX * 100
	end
	conUtil.createHeader("P(p(2) ⋃  p(3) ⋃  p(4) ⋃  p(5)) = " .. result .. "%")
	print("\n")
	conUtil.createHeader("\v f(x) = 100*x^4 + 2550*x^3 + 13400*x^2 - 55050*x - 297000\v")
	fX = funcVals(-100, 100)
	--printFceToFile(fX)
	qSort.sort(fX)
	lenV = #fX
	conUtil.createHeader("\v  Sorted\v")
	for ind = 1, lenV do
		print(fX[ind])
	end
end

function funcVals(from, to)
	vals = {}
	vals[0] = from .. ";" .. to
	index = 1
	for i = from, to do
		vals[index] = fce.f(i)
		print("f("..i..") = "..vals[index])
		index = index + 1
	end
	return vals
end

function printFceToFile(arr)
	fileName = "../bin/outputs/functionXY.csv"
	file = fileHelper.openFile(fileName)
	if not file then return nil end
	file:write("x;y\n")
	for i = tonumber(string.sub(arr[0], 0, string.find(arr[0], ";") - 1)),
	  string.sub(arr[0], string.find(arr[0], ";") + 1, #arr[0]) do
		file:write(i..";"..(fce.f(i)).."\n")
	end
	file:close() --close file
	print("File "..fileName.." is done!")
end

main()
