local linuxUtil = {}
local code = require("code")
local console = require("console")

function linuxUtil.updateColored(cleanAfter)
	clean = cleanAfter or false
	code.coloredText(0, 255, 255, "Starting update sequence.")
	OS_command("sudo apt update")
	OS_command("sudo apt upgrade")
	OS_command("sudo apt dist-upgrade")
	if(clean) then
		code.coloredText(255, 255, 0, "Cleaning started!")
		OS_command("sudo apt autoremove && sudo apt clean")
		code.coloredText(255, 255, 0, "Cleaning finished!")
	end
	code.coloredText(0, 255, 255, "Finished update sequence.")
	if(console.askUser("Restart now? [Y/n]")) then
		OS_command("sudo shutdown -r")
	end
end

function OS_command(command)
	if(os.execute(command)) then
		code.coloredText(0, 255, 0, command .. " - done!")
	else
		code.coloredText(255, 0, 0, "Problem has occured during: " .. command)
	end
end

return linuxUtil
