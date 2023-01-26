local flag = {}
symbols = {"░", "█", "★", "▒"}
--starsX = {5, 4, 6, 3, 5, 7, 4, 6, 5}
--12345678910
--░░░░*░░░░░1
--░░░*░*░░░░2
--░░*░*░*░░░3
--░░░*░*░░░░4
--░░░░*░░░░░5
starsX = {5, 3, 7, 1, 5, 9, 3, 7, 5} --this flag is from Fallout universe
--12345678910
--░░░░*░░░░░1
--░░*░░░*░░░2
--░*░░*░░*░░3
--░░*░░░*░░░4
--░░░░*░░░░░5
rgb = {}
--Colored

function flag.drawFlagColored()
	width = 40
	height = 11
	firstHalfColored(width, height)
end

function secondHalfColored(width, height, index)
	for j = 0, height do
		for i = 0, width do
			io.write("\27[38;2;" .. rgb[1] .. ";" .. rgb[2] .. ";" .. rgb[3] .. "m" .. symbols[2].. "\27[m")
		end
		io.write("\n")
		if(((j % 2) + 1) > 1) then
			rgb = {255, 255, 255}
		else
			rgb = {255, 0, 0}
		end
	end
end

function firstHalfColored(width, height)
  oneFourth = width / 4
  threeFourth = width - oneFourth
  height = height / 2
  index = 1
  indexS = 1
  rgb = {255, 0, 0}
  for j = 1, height do
    for i = 0, oneFourth do
        if(i == starsX[indexS]) then
          io.write("\27[38;2;" .. 255 .. ";" .. 255 .. ";" .. 255 .. "m" .. symbols[3].. "\27[m")
          indexS = indexS + 1
        else
          io.write("\27[38;2;" .. 0 .. ";" .. 0 .. ";" .. 255 .. "m" .. symbols[1].. "\27[m")
        end
    end
    for i = 1, threeFourth do
        io.write("\27[38;2;" .. rgb[1] .. ";" .. rgb[2] .. ";" .. rgb[3] .. "m" .. symbols[2].. "\27[m")
    end
    io.write("\n")
    if(((j % 2) + 1) > 1) then
      rgb = {255, 255, 255}
    else
      rgb = {255, 0, 0}
    end
  end
  secondHalfColored(width, height, index)
end

--ASCII only

function flag.drawFlag()
  width = 40
  height = 11
  firstHalf(width, height)
end

function secondHalf(width, height, index)
  for j = 0, height do
    for i = 0, width do
        line = line .. symbols[index]
    end
    io.write(line .. "\n")
    line = ""
    index = (j % 2) + 1
    if(index > 1) then
      index = 2
    end
  end
end

function firstHalf(width, height)
  oneFourth = width / 4
  threeFourth = width - oneFourth
  height = height / 2
  index = 1
  indexS = 1
  line = ""
  --if(oneFourth + threeFourth == 40)then io.write("LOL") end
  for j = 1, height do
    for i = 0, oneFourth do
        if(i == starsX[indexS]) then
          line = line .. symbols[3]
          indexS = indexS + 1
        else
          line = line .. symbols[4]
        end
    end
    for i = 1, threeFourth do
        line = line .. symbols[index]
    end
    io.write(line .. "\n")
    line = ""
    index = (j % 2) + 1
    if(index > 1) then
      index = 2
    end
  end
  secondHalf(width, height, index)
end
return flag
