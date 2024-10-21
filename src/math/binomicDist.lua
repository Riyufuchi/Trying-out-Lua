local binoDist = {}
local com = require("math/combinationNumber")

function binoDist.printBasicFormula()
	binoDist.printFormula("k", "p", "n")
end

function binoDist.printFormula(k, p, n)
	print("p("..k..") = ("..n.." "..k..") * ("..p..")^"..k.." * (1 - "..p..")^("..n.." - "..k..")")
end

function binoDist.distribute(k, p, n)
	return com.combinationNumber(n, k) * p^k * (1 - p)^(n - k)
end

return binoDist
