local bubbleSort = {}
local arr = {}

function bubbleSort.sort(pArr)
	if pArr == nil then
		pArr = { -1 }
	end
	arr = pArr
	len = #arr
	if len <= 1 then
		return arr
	end
	bubbleSort.sorter(1, len)
	return arr
end

function bubbleSort.sorter(indexMin, indexMax)
	local change = true
	while change do
		change = false
		for i = indexMin, indexMax - 1 do
			if arr[i] > arr[i + 1] then
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				change = true
			end
		end
	end
end

return bubbleSort
