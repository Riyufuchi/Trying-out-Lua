package.path = package.path .. ";../?.lua"
local cards = require("misc/emoji")--require("games/cards")
local fileHelper = require("utils/fileHelper")
local cardTools = require("games/cards/cardTools")
local deck = require("games/cards/deck")

function main()
	print(cards["joker"].." "..cards["cardBack"])
	c = fileHelper.readFile("../bin/input/cards.csv")
	print(c[1])
	print(c[1])
	print(cardTools.blackJackVals(cards["joker"]))
	print(cardTools.blackJackVals(deck[3]))

end

main()
