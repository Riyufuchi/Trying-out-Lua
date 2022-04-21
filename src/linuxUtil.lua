local linuxUtil = {}
local code = require("code")

function linuxUtil.update(cleanAfter)
	clean = cleanAfter or false
	if(os.execute("sudo apt-get update")) then
		print("Update succesful")
	else
		print("Problem has occured!")
	end
	if(os.execute("sudo apt-get upgrade")) then
		print("Update succesful")
	else
		print("Problem has occured!")
	end
	if(os.execute("sudo apt-get dist-upgrade")) then
		print("Update succesful")
	else
		print("Problem has occured!")
	end

	if(clean) then
		code.coloredText(255, 255, 0, "Cleaning started")
		if(os.execute("sudo apt-get autoremove")) then
			print("Autoremove done!")
		end
		if(os.execute("sudo apt-get clean")) then
			print("Clean done!")
		end
	end
end

function linuxUtil.updateColored(cleanAfter)
	clean = cleanAfter or false
	if(os.execute("sudo apt-get update")) then
		code.coloredText(0, 255, 0, "Update done!")
	else
		code.coloredText(255, 0, 0, "Problem has occured!")
	end
	if(os.execute("sudo apt-get upgrade")) then
		code.coloredText(0, 255, 0, "Upgrade done!")
	else
		code.coloredText(255, 0, 0, "Problem has occured!")
	end
	if(os.execute("sudo apt-get dist-upgrade")) then
		code.coloredText(0, 255, 0, "Dist-Upgrade done!")
	else
		code.coloredText(255, 0, 0, "Problem has occured!")
	end
	if(clean) then
		code.coloredText(255, 255, 0, "Cleaning started")
		if(os.execute("sudo apt-get autoremove")) then
			code.coloredText(0, 255, 0, "Autoremove done!")
		end
		if(os.execute("sudo apt-get clean")) then
			code.coloredText(0, 255, 0, "Clean done!")
		end
	end
end

return linuxUtil
