local binoDist = {}
local com = require("math/combinationNumber")

function binoDist.distribute(x, p, n)
	return com.combinationNumber(n, x) * p^x * (1 - p)^(n - x)
end

return binoDist
