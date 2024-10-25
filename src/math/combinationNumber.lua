local comb = {}
local fac = require("math/factorial")

function comb.combinationNumber(n, k)
	if k > n then return -1 end
	if (k == 0) or (k == n) then -- and if k and n equals 0
		return 1;
	end
	if (k == 1) then
		return n;
	end
	--return fac.factorial(n) / (fac.factorial(k) * fac.factorial(n - k))
	return fac.partialFactorial(n, (n - k)) / fac.factorial(k)
end

return comb
