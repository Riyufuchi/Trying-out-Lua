local code = {}

function code.createHeader(a)
	local line = code.createLine(text)
	io.write(line.."\n"..a.."\n"..line.."\n".."\a") --\a -> bell
end

function code.createColoredHeader(r, g, b, text)
	local line = code.createLine(text)
	code.coloredText(r, g, b, line .. "\n" .. text .. "\n" .. line)
end

function code.createColoredHeader(rgb, text)
	local line = code.createLine(text)
	code.coloredText(rgb[1], rgb[2], rgb[3], line .. "\n" .. text .. "\n" .. line)
end

function code.createLine(text)
	text = text or "text"
	local max = string.len(text)
	local line = "";
	for i = 1, max do
		line = line .. "-"
	end
	return line
end

function code.coloredText(r, g, b, text)
	print("\27[38;2;"..r..";"..g..";"..b.."m"..text.."\27[m") -- \27 = \e
end

return code
