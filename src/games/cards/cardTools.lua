local cardTools = {}

function cardTools.blackJackVals(card)
	if card == "🂢" or card == "🂲" or card == "🃂" or card == "🃒" then
		return 2
	elseif card == "🂣" or card == "🂳" or card == "🃃" or card == "🃓" then
		return 3
	elseif card == "🂤" or card == "🂴" or card == "🃄" or card == "🃔" then
		return 4
	elseif card == "🂥" or card == "🂵" or card == "🃅" or card == "🃕" then
		return 5
	elseif card == "🂦" or card == "🂶" or card == "🃆" or card == "🃖" then
		return 6
	elseif card == "🂧" or card == "🂷" or card == "🃇" or card == "🃗" then
		return 7
	elseif card == "🂨" or card == "🂸" or card == "🃈" or card == "🃘" then
		return 8
	elseif card == "🂩" or card == "🂹" or card == "🃉" or card == "🃙" then
		return 9
	elseif card == "🂪" or card == "🂺" or card == "🃊" or card == "🃚" then
		return 10
	elseif card == "🂫" or card == "🂻" or card == "🃋" or card == "🃛" then
		return 10
	elseif card == "🂭" or card == "🂽" or card == "🃍" or card == "🃝" then
		return 10
	elseif card == "🂮" or card == "🂾" or card == "🃎" or card == "🃞" then
		return 10
	elseif card == "🂡" or card == "🂱" or card == "🃁" or card == "🃑" then
		return 11
	else
		return 0
	end
end

return cardTools
