local console = {}

function console.askUser(text)
	io.write(text .. "\n")
	res = io.read()
	return (res == "y" or res == "Y" or res == "");
end

return console
