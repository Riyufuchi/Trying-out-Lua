local fact = {}

function fact.factorial(number)
	fac = 1;
	for i = 1, number do 	--or for i = number,1,-1 do
		fac = fac * i
	end
	return fac
end

return fact
