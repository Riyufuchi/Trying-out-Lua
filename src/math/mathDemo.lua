local fac = require("factorial")
local com = require("combinationNumber")
local bi = require("binomicDist")

function main()
	result = 0
	pX = 0;
	print("What is a % chance of getting 2x 6 in 5 dice throws.")
	for i = 2, 5 do
		pX =  bi.distribution(i, 1/6, 5)
		print("p(" .. i ..") = " .. pX .. " => " .. pX * 100 .. "%")
		result = result + pX * 100
	end
	print("P(p(2) ⋃  p(3) ⋃  p(4) ⋃  p(5)) = " .. result .. "%")
end

main()
