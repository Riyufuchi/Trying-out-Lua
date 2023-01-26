local bi = require("binomicDist")
local fce = require("f")
package.path = package.path .. ";../?.lua"
local conUtil = require("utilsCLI/code")

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
	printFceToFile()
end

function printFceToFile()
	file = io.open("functionXY.csv", "w+")
	file:write("x;y\n")
	for i = -20, 20 do
		file:write(i..";"..(fce.f(i)).."\n")
	end
	file:close() --close file
	print("Done!")
end

main()
