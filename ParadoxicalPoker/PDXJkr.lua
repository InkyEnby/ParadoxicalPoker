--- STEAMODDED HEADER
--- MOD_NAME: Paradoxical Poker
--- MOD_ID: ParadoxPoker
--- MOD_AUTHOR: [Inky 'Ivory' Enby, PotatoNerd]
--- MOD_DESCRIPTION: Adds a whole bunch of both my Paradox Buddies (Credits to PotatoNerd for some of the sprites)

----------------------------------------------
------------MOD CODE -------------------------
PP_UTIL = {}

SMODS.load_file("utilities/stuff.lua")()
--SMODS.load_file("utilities/cards.lua")()
--SMODS.load_file("utilities/pdxjpack.lua")()
SMODS.load_file("utilities/atlas.lua")()

local oldfunc = Game.main_menu
Game.main_menu = function(change_context)
	local ret = oldfunc(change_context)
	local bbb
	if math.random(2) == 1 then
		bbb = "j_para_bnui"
	else
		bbb = "j_para_boop"
	end
	
	local newcard = Card(
		G.title_top.T.x,
		G.title_top.T.y,
		G.CARD_W,
		G.CARD_H,
		G.P_CARDS.empty,
		G.P_CENTERS[bbb],
		{ bypass_discovery_center = true, }
	)
	-- recenter the title
	if not Cryptid then
		G.title_top.T.w = G.title_top.T.w * 1.7675
		G.title_top.T.x = G.title_top.T.x - 0.8
	end

	G.title_top:emplace(newcard)

	-- make the card look the same way as the title screen Ace of Spades
	newcard.T.w = newcard.T.w * 1.1 * 1.2
	newcard.T.h = newcard.T.h * 1.1 * 1.2
	newcard.no_ui = true
	newcard.states.visible = false
	newcard:set_sprites()


	G.E_MANAGER:add_event(Event({
		trigger = "after",
		delay = 0,
		blockable = false,
		blocking = false,
		func = function()
			if change_context == "splash" then
				newcard.states.visible = true
				newcard:start_materialize({ G.C.WHITE, G.C.WHITE }, true, 2.5)
			else
				newcard.states.visible = true
				newcard:start_materialize({ G.C.WHITE, G.C.WHITE }, nil, 1.2)
			end
			return true
		end,
	}))

	return ret
end

SMODS.current_mod.optional_features = {
    -- enable additional SMODS contexts that can be CPU intensive
    retrigger_joker = true,  -- for idk
}

local subdir = "cards"
local cards = NFS.getDirectoryItems(SMODS.current_mod.path .. subdir)
for _, filename in pairs(cards) do
    assert(SMODS.load_file(subdir .. "/" .. filename))()
end
----------------------------------------------
------------MOD CODE END----------------------