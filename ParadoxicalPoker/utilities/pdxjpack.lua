local pack1 = {
	object_type = "Booster",
	key = "pdxj_normal_1",
	kind = "Paradoxical",
	atlas = "PDXJU",
	pos = { x = 0, y = 0 },
	config = { extra = 2, choose = 1 },
	cost = 4,
	--order = 805,
	weight = 100.00,
	create_card = function(self, card)
		return create_card("Paradoxical", G.pack_cards, nil, nil, true, true, nil, "para_joker_1")
	end,
	ease_background_colour = function(self)
		ease_colour(G.C.DYN_UI.MAIN, G.C.SET.pdxgrad)
		ease_background_colour({ new_colour = G.C.SET.pdxgrad, special_colour = G.C.BLACK, contrast = 2 })
	end,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card and card.ability.choose or self.config.choose,
				card and card.ability.extra or self.config.extra,
			},
		}
	end,
	group_key = "k_para_joker_pack",
}