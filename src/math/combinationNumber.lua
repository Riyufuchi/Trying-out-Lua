local comb = {}
local fac = require("factorial")

function comb.combinationNumber(n, k)
	if (k == 0) then
		return 1;
	end
	if (k == 0 and n == 0) then
		return 1;
	end
	if (k == n) then
		return 1;
	end
	if (k == 1) then
		return n;
	end

	nF = fac.factorial(n)
	kF = fac.factorial(k)

	return nF / (kF * fac.factorial(n - k)) 
end

return comb
