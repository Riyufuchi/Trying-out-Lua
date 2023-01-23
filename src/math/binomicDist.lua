local binoDist = {}
local com = require("combinationNumber")

function binoDist.distribution(x, p, n)
	return com.combinationNumber(n, x) * p^x * (1 - p)^(n - x)
end

return binoDist
