local miscFuncs = {}

function miscFuncs.chooseMedian(f, m, l)
	if f < m then
		if m < l then return m
		elseif f > l then return f
		else return l
		end
	else
		if m > l then return m
		elseif f < l then return f
		else return l
		end
	end
	return m
end

return miscFuncs
