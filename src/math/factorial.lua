local fact = {}

function fact.partialFactorial(number, steps)
	if (number < 1) then print("Factorial is defined only for numbers > 0!") return nil end
	fac = 1
	i = number
	while i > steps do
		fac = fac * i
		i = i - 1
	end
	if (fac < 1) then print("Lua number overflow while calculating: "..(i + 1).."!") return nil end
	return fac
end

function fact.factorial(number)
	if (number < 1) then print("Factorial is defined only for numbers > 0!") return nil end
	fac = 1;
	for i = 2, number do 	--or for i = number,1,-1 do
		fac = fac * i
	end
	if (fac < 1) then print("Lua number overflow while calculating: "..number.."!") return nil end
	return fac
end

return fact
