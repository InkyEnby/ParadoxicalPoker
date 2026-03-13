-- Common vvv
SMODS.Joker{
    key = "BunnyOne",
    atlas = "PDXJC",
    pos = {x = 0, y = 0},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
	
    config = {
		extra = {
			chips = 50
		}
    },
	
	calculate = function(self, card, context)
        if context.joker_main then
            return {
                chips = 50
            }
        end
    end,
	
	add_to_deck = function(self, card, from_debuff)

        local copies = SMODS.find_card("j_para_BunnyOne")

        if copies and #copies >= 1 then

			local to_destroy = {copies[1], card}
            SMODS.destroy_cards(to_destroy)

            SMODS.add_card{
                key = "j_para_BunnyTwo"
            }

        end
    end,

    in_pool = function(self)
		allow_duplicates = true
        return true
    end
}
-- Uncommon vvv      Common ^^^
SMODS.Joker{
    key = "HurtbreakWonderland",
    atlas = "PDXJU",
    pos = {x = 0, y = 0},
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,

    config = {
        extra = {
			dollars = 2,
			sell_value = -1
		}
    },

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.sell_value, card.ability.extra.dollars } }
	end,
	
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			if context.other_card:get_id() == 8 or context.other_card:get_id() == 14 then
				card.sell_cost = card.sell_cost + card.ability.extra.sell_value
				return {
					message = "Hurtbreak!",
					dollars = card.ability.extra.dollars
				}
			end
		end
	end,
	
	calc_dollar_bonus = function(self, card)
		return card.ability.extra.dollars
	end,

    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "BunnyTwo",
    atlas = "PDXJU",
    pos = {x = 1, y = 0},
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_comat = true,
    perishable_compat = true,
	
    config = {
		extra = {
			x_chips = 0.5,
		}
    },
	
	calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            context.other_card.ability.perma_x_chips = context.other_card.ability.perma_x_chips or 0
            context.other_card.ability.perma_x_chips = context.other_card.ability.perma_x_chips + card.ability.extra.x_chips
            return {
                extra = { message = localize('k_upgrade_ex'), colour = G.C.CHIPS },
                card = card
            }
        end
    end,
	
	in_pool = function(self)
        return false
    end
}
-- Rare vvv      Uncommon ^^^
SMODS.Joker{
    key = "RoaringKnight",
    atlas = "PDXJR",
    pos = {x = 0, y = 0},
    rarity = 3,
    cost = 7,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,

    config = { extra = { odds = 2, repetitions = 1 } },

    calculate = function(self, card, context)
		
        if context.cardarea == G.play and context.repetition and not context.repetition_only then

            if context.other_card:is_suit("Clubs") and math.random() < 0.5 then
				return {
					message = 'Again!',
					repetitions = card.ability.extra.repetitions,
					card = context.other_card
				}
			end
			
			if context.other_card:is_suit("Spades") and math.random() < 0.5 then
				return {
					message = 'Again!',
					repetitions = card.ability.extra.repetitions,
					card = context.other_card
				}
			end
        end
    end,

    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Inventor",
    atlas = "PDXJR",
    pos = {x = 1, y = 0},
    rarity = 3,
    cost = 7,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,

    config = { extra = { max = 23, min = -2 } },
    loc_vars = function(self, info_queue, card)
        local r_xmults = {}
        for i = card.ability.extra.min, card.ability.extra.max do
            r_xmults[#r_xmults + 1] = tostring(i)
        end
        local loc_xmult = ' ' .. (localize('k_xmult')) .. ' '
        main_start = {
            { n = G.UIT.T, config = { text = 'X', colour = G.C.JOKER_GREY, scale = 0.32 } },
            { n = G.UIT.O, config = { object = DynaText({ string = r_xmults, colours = { G.C.MULT }, pop_in_rate = 9999999, silent = true, random_element = true, pop_delay = 0.5, scale = 0.32, min_cycle_time = 0 }) } },
        }
        return { main_start = main_start }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                xmult = pseudorandom('para_Inventor', card.ability.extra.min, card.ability.extra.max)
            }
        end
    end,

    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "BunnyThree",
    atlas = "PDXJR",
    pos = {x = 2, y = 0},
    rarity = 3,
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
	
    config = {
		extra = {
		}
    },
	
	in_pool = function(self)
        return false
    end
}
SMODS.Joker{
    key = "StuntDouble",
    atlas = "PDXJR",
    pos = {x = 3, y = 0},
    rarity = 3,
    cost = 7,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = {
		extra = {
		}
    },
	
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Marriage",
    atlas = "PDXJR",
    pos = {x = 4, y = 0},
    rarity = 3,
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = {
		extra = {
		}
    },
	
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Redprint",
    atlas = "PDXJR",
    pos = {x = 5, y = 0},
    rarity = 3,
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = { } },
	
	loc_vars = function(self, info_queue, card)
        if card.area and card.area == G.jokers then
            local other_joker
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] == card then other_joker = G.jokers.cards[i - 1] end
            end
            local compatible = other_joker and other_joker ~= card and other_joker.config.center.blueprint_compat
            main_end = {
                {
                    n = G.UIT.C,
                    config = { align = "bm", minh = 0.4 },
                    nodes = {
                        {
                            n = G.UIT.C,
                            config = { ref_table = card, align = "m", colour = compatible and mix_colours(G.C.GREEN, G.C.JOKER_GREY, 0.8) or mix_colours(G.C.RED, G.C.JOKER_GREY, 0.8), r = 0.05, padding = 0.06 },
                            nodes = {
                                { n = G.UIT.T, config = { text = ' ' .. localize('k_' .. (compatible and 'compatible' or 'incompatible')) .. ' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.32 * 0.8 } },
                            }
                        }
                    }
                }
            }
            return { main_end = main_end }
        end
    end,
    calculate = function(self, card, context)
        local other_joker = nil
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i] == card then other_joker = G.jokers.cards[i - 1] end
        end
        return SMODS.blueprint_effect(card, other_joker, context)
    end,
	
    in_pool = function(self)
        return true
    end
}
-- Legendary vvv      Rare ^^^
SMODS.Joker{
    key = "Inky",
    atlas = "PDXJL",
    pos = {x = 0, y = 0},
    rarity = 4,
    soul_pos = { x = 0, y = 1},
    cost = 10,
	--set = "Paradoxical",
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = {
        Xmult = 4,
		chips = 200
    }
    },
    in_pool = function(self)
        return true
    end,
	calculate = function(self, card, context)
		if context.scoring_hand and card.debuffed then
			return {
				mult = self.config.extra.Xmult,
				chips = self.config.extra.chips,
			}
		end
	end,
	modify_card = function(self, card, context)
        if G.GAME.blind and G.GAME.blind.key == "window" then
            if card.base.suit ~= "Diamonds" then
                card.debuffed = true
            else
                card.debuffed = false
            end
        end
		if G.GAME.blind and G.GAME.blind.key == "head" then
            if card.base.suit ~= "Hearts" then
                card.debuffed = true
            else
                card.debuffed = false
            end
        end
    end,
	on_card_drawn = function(self, card, context)
		if G.GAME.blind and G.GAME.blind.key == "wheel" then
			-- Only 1 in 7 cards will NOT be face down (reversed logic)
			if pseudorandom('inky_wheel') < (6 / 7) then
				card:set_face_down(true)
			else
				card:set_face_down(false)
			end
		end
	end,
	calculate_end_of_hand = function(self, context)
	function SMODS.Joker:calculate_end_of_hand(context)
		local blind = G.GAME.blind
			if blind and blind.key == "tooth" then
				if self.ability.name == "Inky" then
					G.EManager:add_event(Event({
						trigger = 'after',
						delay = 0.2,
						func = function()
							G.GAME.dollars = G.GAME.dollars + 1
							play_sound('generic1', 0.9, 0.2)
							return true
						end
					}))
				end
			end
		end
	end
}
SMODS.Joker{
    key = "Potato",
    atlas = "PDXJL",
    pos = {x = 1, y = 0},
    rarity = 4,
    soul_pos = { x = 1, y = 1},
    cost = 10,
	--set = "Paradoxical",
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = {
        Xmult = 4,
		chips = 200
    }
    },
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Alt",
    atlas = "PDXJL",
    pos = {x = 2, y = 0},
    rarity = 4,
    soul_pos = { x = 2, y = 1 },
    cost = 10,
	--set = "Paradoxical",
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,

    config = {
        extra = {
			repetitions = 1,
			Xmult = 1.5
		}
    },
	
	loc_vars = function(self, info_queue, card)
        local wilds = 0
		if G.playing_cards then
			for _, playing_card in ipairs(G.playing_cards) do
				if SMODS.has_enhancement(playing_card, 'm_wild') then wilds = wilds + 1 end
			end
		end
        if wilds >= 26 then
            return {
                message = "Evolution!",
                delay = 1,
                func = function()
					card:set_ability("j_para_Devotion")
                end
            }
        end
		return { vars = { card.ability.extra.Xmult } }
	end,

    -- 🔁 Handles the retrigger logic & suit conversion
    calculate = function(self, card, context)
	
		if context.individual and context.cardarea == G.play then
			-- :get_id tests for the rank of the card. Other than 2-10, Jack is 11, Queen is 12, King is 13, and Ace is 14.
			if SMODS.has_enhancement(context.other_card, 'm_wild') then
				-- Specifically returning to context.other_card is fine with multiple values in a single return value, chips/mult are different from chip_mod and mult_mod, and automatically come with a message which plays in order of return.
				return {
					Xmult = card.ability.extra.Xmult
				}
			end
			
			if context.other_card:get_id() == 2 or context.other_card:get_id() == 3 or context.other_card:get_id() == 4 or context.other_card:get_id() == 5 or context.other_card:get_id() == 6 or context.other_card:get_id() == 7 or context.other_card:get_id() == 8 or context.other_card:get_id() == 9 or context.other_card:get_id() == 10 or context.other_card:get_id() == 11 or context.other_card:get_id() == 12 or context.other_card:get_id() == 13 or context.other_card:get_id() == 14 then
				-- Specifically returning to context.other_card is fine with multiple values in a single return value, chips/mult are different from chip_mod and mult_mod, and automatically come with a message which plays in order of return.
				return {
					Xmult = card.ability.extra.Xmult
				}
			end
		end
		
        if context.cardarea == G.play and context.repetition and not context.repetition_only then

            -- 🔁 Heart cards retrigger once (guaranteed)
            if context.other_card:is_suit("Hearts") then
				return {
					message = 'Again!',
					repetitions = card.ability.extra.repetitions,
					-- The card the repetitions are applying to is context.other_card
					card = context.other_card
				}
			end

            -- 🔁 Wild cards retrigger once (guaranteed)
            if SMODS.has_enhancement(context.other_card, 'm_wild') then
				return {
					message = 'Again!',
					repetitions = card.ability.extra.repetitions,
					-- The card the repetitions are applying to is context.other_card
					card = context.other_card
				}
			end

            -- 🎲 Otherwise, 1 in 4 chance to retrigger
            if math.random() < 0.25 then
                return {
					message = 'Again!',
					repetitions = card.ability.extra.repetitions,
					-- The card the repetitions are applying to is context.other_card
					card = context.other_card
				}
            end
        end
		
		local wilds = 0
		if G.playing_cards then
			for _, playing_card in ipairs(G.playing_cards) do
				if SMODS.has_enhancement(playing_card, 'm_wild') then wilds = wilds + 1 end
			end
		end
        if wilds >= 25 then
            return {
                message = "Evolution!",
                delay = 1,
                func = function()
					card:set_ability("j_para_Devotion")
                end
            }
        end
		-- Below this is broken
		if context.before and context.main_eval and not context.blueprint then
			if math.random() < 0.50 then
				local soonwild = 0
				for _, playing_card in ipairs(G.playing_cards) do
					if playing_card:get_id() == 2 or playing_card:get_id() == 3 or playing_card:get_id() == 4 or playing_card:get_id() == 5 or playing_card:get_id() == 6 or playing_card:get_id() == 7 or playing_card:get_id() == 8 or playing_card:get_id() == 9 or playing_card:get_id() == 10 or playing_card:get_id() == 11 or playing_card:get_id() == 12 or playing_card:get_id() == 13 or playing_card:get_id() == 14 then
						soonwild = soonwild + 1
						playing_card:set_ability('m_wild', nil, true)
						G.E_MANAGER:add_event(Event({
							func = function()
								playing_card:juice_up()
								return true
							end
						}))
					end
				end
			end
			else if math.random() < 0.50 then
				local soonheart = 0
				for _, playing_card in ipairs(G.playing_cards) do
					if playing_card:get_id() == 2 or playing_card:get_id() == 3 or playing_card:get_id() == 4 or playing_card:get_id() == 5 or playing_card:get_id() == 6 or playing_card:get_id() == 7 or playing_card:get_id() == 8 or playing_card:get_id() == 9 or playing_card:get_id() == 10 or playing_card:get_id() == 11 or playing_card:get_id() == 12 or playing_card:get_id() == 13 or playing_card:get_id() == 14 then
						soonheart = soonheart + 1
						playing_card:set_suit('Hearts', nil, true)
						G.E_MANAGER:add_event(Event({
							func = function()
								playing_card:juice_up()
								return true
							end
						}))
					end
				end
			end
        end
		-- Above this is broken
    end,

    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Whisk",
    atlas = "PDXJL",
    pos = {x = 3, y = 0},
    rarity = 4,
    soul_pos = { x = 3, y = 1},
    cost = 10,
	--set = "Paradoxical",
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = {
        Xmult = 4,
		chips = 200
    }
    },
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Toast",
    atlas = "PDXJL",
    pos = {x = 4, y = 0},
    rarity = 4,
    soul_pos = { x = 4, y = 1},
    cost = 10,
	--set = "Paradoxical",
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = {
        Xmult = 4,
		chips = 200
    }
    },
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Nightmare",
    atlas = "PDXJL",
    pos = {x = 5, y = 0},
    rarity = 4,
    soul_pos = { x = 5, y = 1},
    cost = 10,
	--set = "Paradoxical",
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = {
        Xmult = 4,
		chips = 200
    }
    },
    in_pool = function(self,wawa,wawa2)
        return true
    end
}
SMODS.Joker{
    key = "Skel",
    atlas = "PDXJL",
    pos = {x = 6, y = 0},
    rarity = 4,
    soul_pos = { x = 6, y = 1},
    cost = 10,
	--set = "Paradoxical",
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = { } },
	
	calculate = function(self, card, context)
        if context.end_of_round and context.game_over and context.main_eval then
        --    if G.GAME.chips / G.GAME.blind.chips >= 0.25 then -- See note about Talisman compatibility at the bottom
                G.E_MANAGER:add_event(Event({
                    func = function()
                        G.hand_text_area.blind_chips:juice_up()
                        G.hand_text_area.game_chips:juice_up()
                        play_sound('tarot1')
        --                card:start_dissolve()
						card:set_ability("j_para_Spark")
                        return true
                    end
                }))
                return {
                    message = localize('k_sacrifice_para'),
                    saved = 'ph_skel',
                    colour = pdxgrad
                }
        --    end
        end
    end,
	
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Myrados",
    atlas = "PDXJL",
    pos = {x = 7, y = 0},
    rarity = 4,
    soul_pos = { x = 7, y = 1},
    cost = 10,
	--set = "Paradoxical",
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = {
        Xmult = 4,
		chips = 200
    }
    },
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Ratman",
    atlas = "PDXJL",
    pos = {x = 8, y = 0},
    rarity = 4,
    soul_pos = { x = 8, y = 1},
    cost = 10,
	--set = "Paradoxical",
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = {
        Xmult = 4,
		chips = 200
    }
    },
    in_pool = function(self)
        return true
    end
}
-- Paradoxical vvv      Legendary ^^^
SMODS.Joker{
    key = "Corrosion",
    atlas = "PDXJP",
    pos = {x = 0, y = 0},
    rarity = "para_par",
    soul_pos = { x = 0, y = 1},
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = {
        Xmult = 4,
		chips = 200
    }
    },
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Jaundice",
    atlas = "PDXJP",
    pos = {x = 1, y = 0},
    rarity = "para_par",
    soul_pos = { x = 1, y = 1},
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = {
        Xmult = 4,
		chips = 200
    }
    },
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Devotion",
    atlas = "PDXJP",
    pos = {x = 2, y = 0},
    rarity = "para_par",
    soul_pos = { x = 2, y = 1},
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = {
        Xmult = 4,
		chips = 200
    }
    },
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Polaris",
    atlas = "PDXJP",
    pos = {x = 3, y = 0},
    rarity = "para_par",
    soul_pos = { x = 3, y = 1},
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = {
        Xmult = 4,
		chips = 200
    }
    },
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Tyrant",
    atlas = "PDXJP",
    pos = {x = 4, y = 0},
    rarity = "para_par",
    soul_pos = { x = 4, y = 1},
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = {
        Xmult = 4,
		chips = 200
    }
    },
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Pearto",
    atlas = "PDXJP",
    pos = {x = 5, y = 0},
    rarity = "para_par",
    soul_pos = { x = 5, y = 1},
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = {
        Xmult = 4,
		chips = 200
    }
    },
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Spark",
    atlas = "PDXJP",
    pos = {x = 6, y = 0},
    rarity = "para_par",
    soul_pos = { x = 6, y = 1},
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = { e_mult = 2, d_size = 1 } },
	loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.d_size } }
    end,
	add_to_deck = function(self, card, from_debuff)
        G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
        ease_discard(card.ability.extra.d_size)
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
        ease_discard(-card.ability.extra.d_size)
    end,
	calculate = function(self, card, context)
        if context.setting_blind then
			ease_hands_played((-G.GAME.current_round.hands_left)+1)
        end
		if context.joker_main then
			return { e_mult = 2 }
		end
    end,
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "Incident",
    atlas = "PDXJP",
    pos = {x = 7, y = 0},
    rarity = "para_par",
    soul_pos = { x = 7, y = 1},
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = { extra = {
        Xmult = 4,
		chips = 200
    }
    },
    in_pool = function(self)
        return true
    end
}
-- Special (Technically Paradoxical) vvv      Paradoxical ^^^
SMODS.Joker{
    key = "boop",
    atlas = "ss69",
    pos = {x = 0, y = 0},
    rarity = "para_par",
    cost = 69,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = {
		extra = {
			sell_value = -5,
			repetitions = 2,
			max = 25,
			min = 5
		}
    },
	
	loc_vars = function(self, info_queue, card)
		local r_xmults = {}
        for i = card.ability.extra.min, card.ability.extra.max do
            r_xmults[#r_xmults + 1] = tostring(i)
        end
		return { vars = { card.ability.extra.sell_value } }
	end,
	
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			if context.other_card:get_id() == 14 then
				card.sell_cost = card.sell_cost + card.ability.extra.sell_value
				return {
					message = "o.o",
					xmult = pseudorandom('para_boop', card.ability.extra.min, card.ability.extra.max)
				}
			end
		end
		if context.cardarea == G.play and context.repetition and not context.repetition_only then
			if context.other_card:get_id() == 14 then
				return {
					repetitions = card.ability.extra.repetitions,
					card = context.other_card,
				}
			end
		end
	end,
	
    in_pool = function(self)
        return true
    end
}
SMODS.Joker{
    key = "bnui",
    atlas = "ss70",
    pos = {x = 0, y = 0},
    rarity = "para_par",
    cost = 69,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_comat = true,
    perishable_compat = true,
    config = {
		extra = {
			sell_value = -5,
			repetitions = 2,
			max = 25,
			min = 5
		}
    },
	
	loc_vars = function(self, info_queue, card)
		local r_xmults = {}
        for i = card.ability.extra.min, card.ability.extra.max do
            r_xmults[#r_xmults + 1] = tostring(i)
        end
		return { vars = { card.ability.extra.sell_value } }
	end,
	
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			if context.other_card:get_id() == 14 then
				card.sell_cost = card.sell_cost + card.ability.extra.sell_value
				return {
					message = "o.o",
					xmult = pseudorandom('para_bnui', card.ability.extra.min, card.ability.extra.max)
				}
			end
		end
		if context.cardarea == G.play and context.repetition and not context.repetition_only then
			if context.other_card:get_id() == 14 then
				return {
					repetitions = card.ability.extra.repetitions,
					card = context.other_card,
				}
			end
		end
	end,
	
    in_pool = function(self)
        return true
    end
}