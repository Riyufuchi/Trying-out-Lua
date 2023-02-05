local quickSortV2 = {}
local arr = {}

function quickSortV2.sort(pArr)
	if pArr == nil then pArr = { -1 } end
	arr = pArr
	local len = #arr
	if len <= 1 then return arr end
	quickSortV2.sorter(1, len)
	return arr
end

--sorting and partioning in one function via recursion
function quickSortV2.sorter(indexMin, indexMax)
	local i = indexMin
	local j = indexMax
	local pivot = arr[(indexMin + indexMax) // 2] -- // -> divide and remove mantisa
	while i < j do
		while arr[i] < pivot do i = i + 1 end
		while arr[j] > pivot do j = j - 1 end
		if i <= j then
			arr[i], arr[j] = arr[j], arr[i]
			i = i + 1
			j = j - 1
		end
	end
	if indexMin < j then quickSortV2.sorter(indexMin, j) end
	if indexMax > i then quickSortV2.sorter(i, indexMax) end
end

return quickSortV2
