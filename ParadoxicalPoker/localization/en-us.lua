return {
    descriptions = {
        Back = {
    --        b_para_example = {
    --            name = "Example Deck",
    --            text = {
    --                "Example",
    --            },
    --            unlock = {
    --                "Example",
    --            }
    --        },
        },
        Blind = {
    --        bl_para_example = {
    --            name = "Example Blind",
    --            text = {
	--				"Example"
    --            },
    --        },
        },
        Edition = {
    --        e_para_example = {
    --            name = "Example Joker Edition",
    --            text = {
    --                "Example",
    --            },
    --        },
        },
        Enhanced = {
    --        m_para_example = {
    --            name = "Example Card Enhancement",
    --            text = {
    --                "Example",
    --            },
    --        },
        },
        Joker = {
    --        j_para_example = {
    --            name = "Example Joker",
    --            text = {
    --                "Example",
    --            },
	--			unlock = {
    --                "Example",
    --            },
    --        },
	
	--		Common
			j_para_BunnyOne = {
				name = "Bunny",
				text = {
					"{C:chips}+50{} Chips, upgrades",
					"when there are {C:attention}2{}",
					"copies of this joker"
				},
			},
	
	--		Uncommon
			j_para_HurtbreakWonderland = {
				name = "Hurtbreak Wonderland",
				text = {
					"Each played {C:attention}8{} or {C:attention}Ace{}",
					"gives {C:money}$#2#{} when scord",
					"and this joker gets {C:money}$#1#{}",
					"of sell value",
				},
			},
			j_para_BunnyTwo = {
				name = "Two Bunnies",
				text = {
					"Every played {C:attention}card{}",
                    "permanently gains",
                    "{X:chips,C:white}X0.5{} Chips when scored",
				},
			},
			
	--		Rare
			j_para_RoaringKnight = {
				name = "The Roaring Knight",
				text = {
					"{C:green}1 in 2{} chance for",
					"played cards with",
					"{C:clubs}Club{} suit or",
					"{C:spades}Spade{} suit to",
					"retrigger",
				},
			},
			j_para_Inventor = {
				name = "The Inventor",
				text = {
					"",
				},
			},
			j_para_BunnyThree = {
				name = "Too Many Bunnies",
				text = {
					"Placeholder",
				},
			},
			j_para_StuntDouble = {
				name = "Stunt Double",
				text = {
					"Placeholder",
				},
			},
			j_para_Marriage = {
				name = "Marriage",
				text = {
					"Placeholder",
				},
			},
			j_para_Redprint = {
				name = "Redprint",
				text = {
					"Copies ability of",
                    "{C:attention}Joker{} to the left",
				},
			},
			
	--		Legendary
			j_para_Inky = {
				name = "Inky",
				text = {
					"{C:para_pdxgrad}'Saccharine, Pungent, Peppery.'{}",
					"{C:para_pdxgrad}'It just isn't right...'{}",
					"Debuffed cards give {C:chips}+100{} Chips and",
					"{X:mult,C:white}X2.5{} Mult when scored,",
					"Reverses the effect of",
					"every {C:attention}Boss Blind",
					"{C:attention}Upgrades into Corrosion after Ante 8{}",
				},
			},
			j_para_Potato = {
				name = "Potato",
				text = {
					"{C:para_pdxgrad}'Sedentary and Sedimentary.'{}",
					"Adds {C:attention}1{} {C:attention}Stone Card{} to deck after every {C:attention}5{} {C:attention}Stone Cards{}",
					"{C:attention}Stone Cards{} give {X:mult,C:white}X1.75{} Mult and {X:chips,C:white}X1.1{} Chips when scored",
					"{C:attention}Upgrades into Jaundice after playing a Flush Five with only Stone Cards",
				},
			},
			j_para_Alt = {
				name = "Alt",
				text = {
					"{C:para_pdxgrad}'Kind and caring, overall great.'",
					"Played cards give {X:mult,C:white}X1.5{} Mult",
					"{C:green}1 in 4{} chance for each played card to retrigger",
					"Wild Cards give {X:mult,C:white}X1.5{} Mult and retrigger once",
					"{C:hearts}Hearts{} are guaranteed to retrigger",
					"All played cards become {C:hearts}Hearts{} or {C:attention}Wild Cards{}",
					"{C:attention}Upgrades into Devotion when 25 Wild Cards are in your deck",
				},
			},
			j_para_Whisk = {
				name = "Whisk",
				text = {
					"Placeholder",
				},
			},
			j_para_Toast = {
				name = "Toast",
				text = {
					"{C:para_pdxgrad}'Toasted.'{}",
					"All Jokers in the shop are {C:attention}Perishable{}",
					"When {C:attention}Boss Blind{} is defeated, make a random Joker {C:attention}Eternal{}",
					"and remove its {C:attention}Perishable{} Sticker",
					"Copies the effect of all {C:attention}Eternal{} Jokers",
					"{C:attention}Upgrades into Tyrant when you own 3 Eternal Jokers{}",
				},
			},
			j_para_Nightmare = {
				name = "Nightmare",
				text = {
					"Placeholder",
				},
			},
			j_para_Skel = {
				name = "Skel",
				text = {
					"{C:para_pdxgrad}'Your Best Friend.'{}",
					"Prevents death",
					"regardless of round score",
					"{C:attention}Upgrades into Spark after preventing death",
				},
			},
			j_para_Myrados = {
				name = "Myrados",
				text = {
					"Placeholder",
				},
			},
			j_para_Ratman = {
				name = "Ratman",
				text = {
					"Placeholder",
				},
			},
			
	--		Paradoxical
			j_para_Corrosion = {
				name = "{C:para_pdxgrad}Corrosion{}",
				text = {
					"Placeholder",
				},
			},
			j_para_Jaundice = {
				name = "{C:para_pdxgrad}Jaundice{}",
				text = {
					"Placeholder",
				},
			},
			j_para_Devotion = {
				name = "{C:para_pdxgrad}Devotion{}",
				text = {
					"Placeholder",
				},
			},
			j_para_Polaris = {
				name = "{C:para_pdxgrad}Polaris{}",
				text = {
					"Placeholder",
				},
			},
			j_para_Tyrant = {
				name = "{C:para_pdxgrad}Tyrant{}",
				text = {
					"Placeholder",
				},
			},
			j_para_Pearto = {
				name = "{C:para_pdxgrad}?????{}",
				text = {
					"Placeholder",
				},
			},
			j_para_Spark = {
				name = "{C:para_pdxgrad}Spark{}",
				text = {
					"{C:para_pdxgrad}'There's a reason why you can play this game with one hand.'{}",
					"{X:para_emult,C:white}^2{} Mult",
					"{C:red}+1{} Discard",
					"When {C:attention}Blind{} is selected",
					"set Hands to {C:blue}1{}",
				},
			},
			j_para_Incident = {
				name = "{C:para_pdxgrad}Incident{}",
				text = {
					"Placeholder",
				},
			},
			j_para_boop = {
				name = "{C:para_pdxgrad}o.o{}",
				text = {
					"{C:para_pdxgrad}o.o{}",
				},
			},
			j_para_bnui = {
				name = "{C:para_pdxgrad}o.o{}",
				text = {
					"{C:para_pdxgrad}o.o{}",
				},
			},
			
        },
        Other = {
    --        para_example_seal = {
    --            name = "Example Seal",
    --            text = {
    --                "Example",
    --            },
    --        },
        },
        Spectral = { -- If you're making regular Spectrals the key will be "Spectral"
    --        c_pare_example = {
    --            name = "Example Spectral Card",
    --            text = {
    --                "Example",
    --            },
    --        },
        },
        Stake = {
    --        stake_para_example = {
    --            name = "Example Stake",
    --            text = {
    --                "Example",
    --            },
    --        },
        },
        Tarot = { -- If you're making regular Tarots the key will be "Tarot"
    --        c_para_example = {
    --            name = "Example Tarot",
    --            text = {
    --                "Example",
    --            },
    --        },
        },
        Voucher = {
    --        v_para_example = {
    --            name = "Example Voucher",
    --            text = {
    --                "Example",
    --            },
    --            unlock = {
    --                "Example",
    --            },
    --        },
			v_para_Backstock = {
				name = "Backstock",
				text = {
					"+1 voucher slot available in the shop",
				}
            },
			v_para_Fabled = {
				name = "Fabled",
				text = {
					"Rare Jokers appear 2X more frequently in any of the Buffoon Packs",
				}
            },
			v_para_JobApplication = {
				name = "Job Application",
				text = {
					"At the end of each Ante, create a Common Joker (Must have room)",
				}
            },
			v_para_TradingCard = {
				name = "Trading Card",
				text = {
					"+1 booster pack slot available in the shop",
				}
            },
			v_para_RealGambling = {
				name = "Real Gambling",
				text = {
					"1 in 5000 chance for +3 hand size each round",
				}
            },
			v_para_HiddenStash = {
				name = "Hidden Stash",
				text = {
					"Upgraded Tarot Cards may appear in the shop or any of the Arcana Packs",
				}
            },
	--		Tier 2
			v_para_SupplyDemand = {
				name = "Supply & Demand",
				text = {
					"+1 voucher slot available in the shop",
				}
            },
			v_para_Legend = {
				name = "Legend",
				text = {
					"Legendary Jokers may appear in any of the Buffoon Packs",
				}
            },
			v_para_Promotion = {
				name = "Promotion",
				text = {
					"At the end of each Ante, create an Uncommon Joker (Must have room)",
				}
            },
			v_para_CardShop = {
				name = "Card Shop",
				text = {
					"+1 booster pack slot available in the shop",
				}
            },
			v_para_HonestGambling = {
				name = "Honest Gambling",
				text = {
					"+1 chip per card played this run",
				}
            },
			v_para_PremiumCollection = {
				name = "Premium Collection",
				text = {
					"Upgraded Tarot Cards replace normal Tarot Cards in the shop or any of the Arcana Packs",
				}
            },
        },
    },
    misc = {
        challenge_names = {
    --        c_para_example = "Example Challenge",
        },
        dictionary = { -- b_para_ = taro/spec cards / k_para_ = rarities
	--		b_para_example = "Example"
	--		k_para_example = "Example"
			k_para_pdxj_pack = "Paradox Joker Pack",
			ph_skel = "Saved by Skel",
			k_sacrifice_para = "Sacrifice!",
        },
        labels = { -- various labels like rarities, cards, & seals idk
    --        para_example_seal = "Example Seal",
        },
        ranks = { -- card ranks
    --        para_2 = "2",
        },
        suits_plural = {
    --        para_Examples = "Examples",
        },
        suits_singular = {
    --        para_Examples = "Example",
        },
    }
}
