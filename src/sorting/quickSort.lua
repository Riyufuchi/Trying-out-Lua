local quickSort = {}
local arr = {}

--"However, it is customary in Lua to start arrays with index 1.
--The Lua libraries adhere to this convention;
--so, if your arrays also start with 1, you will be able to use their functions directly."
--	-https://www.lua.org/pil/11.1.html
function quickSort.sort(pArr)
	if pArr == nil then
		pArr = { -1 }
	end
	arr = pArr
	local len = #arr
	if len <= 1 then
		return arr
	end
	quickSort.sorter(1, len)
	return arr
end

function quickSort.sorter(indexMin, indexMax)
	if indexMin < indexMax then
		separation = partion(indexMin, indexMax)
		quickSort.sorter(indexMin, separation - 1)
		quickSort.sorter(separation + 1, indexMax)
	end
end

function partion(indexMin, indexMax)
	local i = indexMin
	local pivot = arr[indexMax]
	local helper = 0
	for j = indexMin, indexMax - 1 do --because last is pivot in this case
		if arr[j] <= pivot then
			helper = arr[i]
			arr[i] = arr[j]
			arr[j] = helper
			i = i + 1
		end
	end
	arr[i], arr[indexMax] = arr[indexMax], arr[i]
	return i
end

return quickSort
