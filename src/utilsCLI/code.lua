local code = {}

function code.createHeader(a)
	max = string.len(a)
	line = "";
	for i = 1, max do
		line = line .. "-"
	end
	io.write(line.."\n"..a.."\n"..line.."\n".."\a") --\a -> bell
end

function code.createColoredHeader(r, g, b, text)
	max = string.len(text)
	line = "";
	for i = 1, max do
		line = line .. "-"
	end
	code.coloredText(r, g, b, line .. "\n" .. text .. "\n" .. line)
end

function code.createColoredHeader(rgb, text)
	max = string.len(text)
	line = "";
	for i = 1, max do
		line = line .. "-"
	end
	code.coloredText(rgb[1], rgb[2], rgb[3], line .. "\n" .. text .. "\n" .. line)
end

function code.coloredText(r, g, b, text)
	print("\27[38;2;"..r..";"..g..";"..b.."m"..text.."\27[m") -- \27 -> \e
end

return code
