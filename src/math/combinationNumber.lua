local comb = {}
local fac = require("factorial")

function comb.combinationNumber(n, k)
	if (k == 0) or (k == n) then -- and ifk and n equals 0
		return 1;
	end
	if (k == 1) then
		return n;
	end
	return fac.factorial(n) / (fac.factorial(k) * fac.factorial(n - k))
end

return comb
