SMODS.Voucher{
	key = 'Backstock',
	atlas = 'PDXV',
	pos = { x = 0, y = 0 },
	unlocked = true,
	discovered = true,
	
	config = {
		extra = 1
	},
	
	loc_vars = function(self, info_queue, card)
		return { vars = { (card and card.ability.extra or self.config.extra) } }
	end,
	redeem = function(self, card)
		local mod = math.floor(card and card.ability.extra or self.config.extra)
--		SMODS.change_booster_limit(mod)
		SMODS.change_voucher_limit(mod)
	end,
	unredeem = function(self, card)
		local mod = math.floor(card and card.ability.extra or self.config.extra)
--		SMODS.change_booster_limit(-mod)
		SMODS.change_voucher_limit(-mod)
	end,
	
	in_pool = function(self)
		return true
	end
}
SMODS.Voucher{
	key = 'SupplyDemand',
	atlas = 'PDXV',
	pos = { x = 0, y = 1 },
	requires = {
		'v_para_Backstock'
    },
	unlocked = true,
	discovered = true,
	
	config = {
		extra = 1
	},
	
	loc_vars = function(self, info_queue, card)
		return { vars = { (card and card.ability.extra or self.config.extra) } }
	end,
	redeem = function(self, card)
		local mod = math.floor(card and card.ability.extra or self.config.extra)
--		SMODS.change_booster_limit(mod)
		SMODS.change_voucher_limit(mod)
	end,
	unredeem = function(self, card)
		local mod = math.floor(card and card.ability.extra or self.config.extra)
--		SMODS.change_booster_limit(-mod)
		SMODS.change_voucher_limit(-mod)
	end,
	
	in_pool = function(self)
		return true
	end
}
SMODS.Voucher{
	key = 'Fabled',
	atlas = 'PDXV',
	pos = { x = 1, y = 0 },
	unlocked = true,
	discovered = true,
	
	config = {
	},
	
	in_pool = function(self)
		return true
	end
}
SMODS.Voucher{
	key = 'Legend',
	atlas = 'PDXV',
	pos = { x = 1, y = 1 },
	requires = {
		'v_para_Fabled'
    },
	unlocked = true,
	discovered = true,
	
	config = {
	},
	
	in_pool = function(self)
		return true
	end
}
SMODS.Voucher{
	key = 'JobApplication',
	atlas = 'PDXV',
	pos = { x = 2, y = 0 },
	unlocked = true,
	discovered = true,
	
	config = {
--		extra = 1
	},
	
--	loc_vars = function(self, info_queue, card)
--		return { vars = { (card and card.ability.extra or self.config.extra) } }
--	end,
--	if self.ability.name == 'JobApplication' and not (context.blueprint_card or self).getting_sliced and #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
--        local jokers_to_create = math.min(2, G.jokers.config.card_limit - (#G.jokers.cards + G.GAME.joker_buffer))
--            G.GAME.joker_buffer = G.GAME.joker_buffer + jokers_to_create
--            G.E_MANAGER:add_event(Event({
--				func = function() 
--				for i = 4, jokers_to_create do
--					local card = create_card('Joker', G.jokers, nil, 0, nil, nil, nil, 'rif')
--					card:add_to_deck()
--					G.jokers:emplace(card)
--					card:start_materialize()
--					G.GAME.joker_buffer = 0
--				end
--                return true
--            end}))   
--        card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE}) 
--    end
	
	in_pool = function(self)
		return true
	end
}
SMODS.Voucher{
	key = 'Promotion',
	atlas = 'PDXV',
	pos = { x = 2, y = 1 },
	requires = {
		'v_para_JobApplication'
    },
	unlocked = true,
	discovered = true,
	
	config = {
	},
	
	in_pool = function(self)
		return true
	end
}
SMODS.Voucher{
	key = 'TradingCard',
	atlas = 'PDXV',
	pos = { x = 3, y = 0 },
	unlocked = true,
	discovered = true,
	
	config = {
		extra = 1
	},
	
	loc_vars = function(self, info_queue, card)
		return { vars = { (card and card.ability.extra or self.config.extra) } }
	end,
	redeem = function(self, card)
		local mod = math.floor(card and card.ability.extra or self.config.extra)
		SMODS.change_booster_limit(mod)
--		SMODS.change_voucher_limit(mod)
	end,
	unredeem = function(self, card)
		local mod = math.floor(card and card.ability.extra or self.config.extra)
		SMODS.change_booster_limit(-mod)
--		SMODS.change_voucher_limit(-mod)
	end,
	
	in_pool = function(self)
		return true
	end
}
SMODS.Voucher{
	key = 'CardShop',
	atlas = 'PDXV',
	pos = { x = 3, y = 1 },
	requires = {
		'v_para_TradingCard'
    },
	unlocked = true,
	discovered = true,
	
	config = {
		extra = 1
	},
	
	loc_vars = function(self, info_queue, card)
		return { vars = { (card and card.ability.extra or self.config.extra) } }
	end,
	redeem = function(self, card)
		local mod = math.floor(card and card.ability.extra or self.config.extra)
		SMODS.change_booster_limit(mod)
--		SMODS.change_voucher_limit(mod)
	end,
	unredeem = function(self, card)
		local mod = math.floor(card and card.ability.extra or self.config.extra)
		SMODS.change_booster_limit(-mod)
--		SMODS.change_voucher_limit(-mod)
	end,
	
	in_pool = function(self)
		return true
	end
}
SMODS.Voucher{
	key = 'RealGambling',
	atlas = 'PDXV',
	pos = { x = 4, y = 0 },
	unlocked = true,
	discovered = true,
	
	config = {
	},
	
	in_pool = function(self)
		return true
	end
}
SMODS.Voucher{
	key = 'HonestGambling',
	atlas = 'PDXV',
	pos = { x = 4, y = 1 },
	requires = {
		'v_para_RealGambling'
    },
	unlocked = true,
	discovered = true,
	
	config = {
	},
	
	in_pool = function(self)
		return true
	end
}
SMODS.Voucher{
	key = 'HiddenStash',
	atlas = 'PDXV',
	pos = { x = 5, y = 0 },
	unlocked = true,
	discovered = true,
	
	config = {
	},
	
	in_pool = function(self)
		return true
	end
}
SMODS.Voucher{
	key = 'PremiumCollection',
	atlas = 'PDXV',
	pos = { x = 5, y = 1 },
	requires = {
		'v_para_HiddenStash'
    },
	unlocked = true,
	discovered = true,
	
	config = {
	},
	
	in_pool = function(self)
		return true
	end
}