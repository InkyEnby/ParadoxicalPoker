function PP_UTIL.reverse_table(t)
  local reversed = {}
  for i = #t, 1, -1 do
    table.insert(reversed, t[i])
  end
  return reversed
end

SMODS.Gradient {
	key = "pdxgrad",
	colours = {
		HEX("2e0085"),
		HEX("e2a3b7"),
		HEX("470000"),
		HEX("68beca"),
		HEX("7c500e"),
		HEX("0000ff"),
		HEX("f58025"),
		HEX("787878"),
		HEX("decf00"),
	},
	cycle = 10,
	interpolation = "trig"
}

SMODS.Gradient {
	key = "emult",
	colours = {
		HEX("3b0000"),
		HEX("470000"),
		HEX("570000"),
		HEX("7a0000"),
		HEX("930000"),
		HEX("7a0000"),
		HEX("570000"),
		HEX("470000"),
	},
	cycle = 8,
	interpolation = "trig"
}

SMODS.Rarity {
	key = "par",
	loc_txt = {
        name = "Paradoxical"
    },
	pools = {["Joker"] = true},
	default_weight = 0,
	badge_colour = HEX("000000"),
	get_weight = function(self, weight, object_type)
        return weight
    end,
}