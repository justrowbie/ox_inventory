return {
	-- Utama
	["money"] = { label = "Uang", weight = 0, stack = true, close = true, allowArmed = true, },
	["black_money"] = { label = "Uang Curian", weight = 0, stack = true, close = true, allowArmed = true, },
	
	-- Komunikasi
    ["phone"] = {
        label = "Phone",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["yphone"] = {
        label = "YPhone",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["yphone_natural"] = {
        label = "YPhone Natural",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["yphone_black"] = {
        label = "YPhone Black",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["yphone_white"] = {
        label = "YPhone White",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["yphone_blue"] = {
        label = "Phone",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["yflipphone"] = {
        label = "Phone",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["yflip_mint"] = {
        label = "YFlip Mint",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["yflip_gold"] = {
        label = "YFlip Gold",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["yflip_graphite"] = {
        label = "YFlip Graphite",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["yflip_lavender"] = {
        label = "YFlip Lavender",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["y24_black"] = {
        label = "Y24 Black",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["y24_silver"] = {
        label = "Y24 Silver",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["y24_violet"] = {
        label = "Y24 Violet",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["y24_yellow"] = {
        label = "Y24 Yellow",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["yfold_black"] = {
        label = "YFold Black",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },
    ["yphone_fold_black"] = {
        label = "YPhone Fold Black",
        weight = 100,
        stack = false,
        consume = 0,
        client = {
            export = "yseries.UsePhoneItem",
            remove = function()
                TriggerEvent("yseries:phone-item-removed")
            end,
            add = function()
                TriggerEvent("yseries:phone-item-added")
            end
        }
    },    
	["radio"] = { label = "Radio", weight = 100, stack = true, degrade = 10080, decay = true, close = true },

    -- nt_bags
    ['backpack'] = {
		label = 'Small Backpack',
		weight = 1000,
		stack = false,
		client = {
			export = 'nt_extension.openBags'
		}
	},
    ['backpack2'] = {
		label = 'Black Long Bag',
		weight = 2000,
		stack = false,
		client = {
			export = 'nt_extension.openBags'
		}
	},
    ['backpack3'] = {
		label = 'Green Long Bag',
		weight = 2000,
		stack = false,
		client = {
			export = 'nt_extension.openBags'
		}
	},
    ['backpack4'] = {
		label = 'Forest Army Long Bag',
		weight = 2000,
		stack = false,
		client = {
			export = 'nt_extension.openBags'
		}
	},
    ['backpack5'] = {
		label = 'Desert Army Long Bag',
		weight = 2000,
		stack = false,
		client = {
			export = 'nt_extension.openBags'
		}
	},
    ['suitcase'] = {
		label = 'Office Duffel Bag',
		weight = 1000,
		stack = false,
		client = {
			export = 'nt_extension.openBags'
		}
	},
    ['suitcase2'] = {
		label = 'Metal Suitcase',
		weight = 1000,
		stack = false,
		client = {
			export = 'nt_extension.openBags'
		}
	},
    ['suitcase3'] = {
		label = 'Lux Duffel Bag',
		weight = 1000,
		stack = false,
		client = {
			export = 'nt_extension.openBags'
		}
	},

    -- nt_throws
    ['ball_rugby'] = {
		label = 'ball_rugby',
		weight = 100,
		stack = false,
	},
    ['ball_basket'] = {
		label = 'ball_basket',
		weight = 100,
		stack = false,
	},
    ['ball_baseball'] = {
		label = 'ball_baseball',
		weight = 100,
		stack = false,
	},
    ['ball_football'] = {
		label = 'ball_football',
		weight = 100,
		stack = false,
	},

	-- Food
	["snikkel_candy"] = { label = "Coklat Snikkel", weight = 100, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { hunger = 20 }, anim = 'eating', prop = 'egobar', usetime = 6000 }, },
	["twerks_candy"] = { label = "Coklat Twerks", weight = 100, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { hunger = 20 }, anim = 'eating', prop = 'egobar', usetime = 6000 }, },
	["tosti"] = { label = "Roti Keju", weight = 100, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { hunger = 10 }, anim = 'eating', prop = 'msandwhich', usetime = 6000 }, },
	["sandwich"] = { label = "Sandwich", weight = 100, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { hunger = 10 }, anim = 'eating', prop = 'sandwich', usetime = 6000 }, },

	-- Drink
	["water_bottle"] = { label = "Air Mineral", weight = 100, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { thirst = 15 }, anim = 'drinking', prop = 'water', usetime = 6000 }, },
	["ecola"] = { label = "Cola", weight = 200, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { thirst = 15 }, anim = 'drinking', prop = 'ecola', usetime = 6000 }, },
	["ecola_light"] = { label = "Cola Light", weight = 200, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { thirst = 10 }, anim = 'drinking', prop = 'ecola', usetime = 6000 }, },
	["coffee"] = { label = "Kopi", weight = 200, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { thirst = 15 }, anim = 'coffee', prop = 'coffee', usetime = 6000 }, },
	["sprunk"] = { label = "Sprunk", weight = 200, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { thirst = 15 }, anim = 'drinking', prop = 'sprunk', usetime = 6000 }, },
	["sprunk_light"] = { label = "Sprunk Light", weight = 200, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { thirst = 15 }, anim = 'drinking', prop = 'sprunk', usetime = 6000 }, },
	
	-- Alcohol
	["beer"] = { label = "Bir", weight = 500, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { thirst = 20, alcohol = 0.25, stress = -25 }, anim = 'drinking', prop = 'beer', usetime = 6000 }, },
	["vodka"] = { label = "Vodka", weight = 500, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { thirst = 40, alcohol = 0.5, stress = -50 }, anim = 'drinking', prop = 'vodka', usetime = 6000 }, },
	["whiskey"] = { label = "Wiski", weight = 500, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { thirst = 60, alcohol = 1.0, stress = -100 }, anim = 'drinking', prop = 'whiskey', usetime = 6000 }, },	

	-- Hospital
	["bandage"] = { label = "Perban", weight = 115, stack = true, degrade = 4320, decay = true, close = true, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, },
	["firstaid"] = { label = "P3K Medis", weight = 2500, stack = true, degrade = 4320, decay = true, close = true, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, },
	["ifaks"] = { label = "P3K Personal", weight = 200, stack = true, degrade = 4320, decay = true, close = true, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, },
	["painkillers"] = { label = "Pereda Rasa Sakit", weight = 0, stack = true, degrade = 4320, decay = true, close = true, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, },

    -- House Robbery
	["tv"] = { label = "TV Kecil", weight = 10000, stack = false, degrade = 4320, decay = true, close = true, },
	["big_tv"] = { label = "TV Besar", weight = 10000, stack = false, degrade = 4320, decay = true, close = true, },
	["boombox"] = { label = "Boom Box", weight = 10000, stack = false, degrade = 4320, decay = true, close = true, },
	["microwave"] = { label = "Microwave", weight = 10000, stack = false, degrade = 4320, decay = true, close = true, },
	["golfclubs"] = { label = "Tas Golf", weight = 10000, stack = false, degrade = 4320, decay = true, close = true, },
	["house_art"] = { label = "Lukisan", weight = 10000, stack = false, degrade = 4320, decay = true, close = true, },
	["pc"] = { label = "Komputer", weight = 10000, stack = false, degrade = 4320, decay = true, close = true, },
	["laptop"] = { label = "Laptop", weight = 10000, stack = false, degrade = 4320, decay = true, close = true, },

    -- Store Robbery
	["usb_green"] = { label = "USB Hijau", weight = 100, stack = true, degrade = 10080, decay = true, close = true, },

    -- Fleeca Robbery
	["usb_red"] = { label = "USB Merah", weight = 100, stack = true, degrade = 10080, decay = true, close = true, },

    -- Pacific Bank
	["thermite"] = { label = "Thermite", weight = 100, stack = true, degrade = 10080, decay = true, close = true, },

    -- Narcotic
	["narco_weed"] = { label = "Daun Kanabis", weight = 100, stack = true, degrade = 10080, decay = true, close = true, },
	["narco_weed_pack"] = { label = "Paket Kanabis", weight = 200, stack = true, degrade = 10080, decay = true, close = true, },
	["narco_poppy"] = { label = "Bunga Poppy", weight = 100, stack = true, degrade = 10080, decay = true, close = true, },
	["narco_poppy_pack"] = { label = "Paket Opium", weight = 200, stack = true, degrade = 10080, decay = true, close = true, },
	["plastic_bag"] = { label = "Kantong Plastik", weight = 100, stack = true, degrade = 10080, decay = true, close = true, },

    -- Blueprint
	["bp_weapon_pistol50"] = { label = "BP Pistol .50", weight = 100, stack = true, degrade = 10080, decay = true, close = true, client = { image = 'blueprint.png' } },
	["bp_weapon_revolver"] = { label = "BP Revolver", weight = 100, stack = true, degrade = 10080, decay = true, close = true, client = { image = 'blueprint.png' } },
	["bp_weapon_revolver_mk2"] = { label = "BP Revolver MK2", weight = 100, stack = true, degrade = 10080, decay = true, close = true, client = { image = 'blueprint.png' } },
	["bp_weapon_minismg"] = { label = "BP Mini SMG", weight = 100, stack = true, degrade = 10080, decay = true, close = true, client = { image = 'blueprint.png' } },
	["bp_weapon_assaultrifle"] = { label = "BP Assault Rifle", weight = 100, stack = true, degrade = 10080, decay = true, close = true, client = { image = 'blueprint.png' } },

	-- Tools
	["advancedlockpick"] = { label = "Advanced Lockpick", weight = 500, stack = true, degrade = 4320, decay = true, close = true, },
	["binoculars"] = { label = "Teropong", weight = 600, stack = false, degrade = 4320, decay = true, close = true, },
	["firework1"] = { label = "Kembang Api 1", weight = 1000, stack = true, degrade = 4320, decay = true, close = true, },
	["firework2"] = { label = "Kembang Api 2", weight = 1000, stack = true, degrade = 4320, decay = true, close = true, },
	["firework3"] = { label = "Kembang Api 3", weight = 1000, stack = true, degrade = 4320, decay = true, close = true, },
	["firework4"] = { label = "Kembang Api 4", weight = 1000, stack = true, degrade = 4320, decay = true, close = true, },
	["lighter"] = { label = "Korek Api", weight = 0, stack = false, degrade = 4320, decay = true, close = true, },
	["lockpick"] = { label = "Lockpick", weight = 160, stack = true, degrade = 4320, decay = true, close = true, },
	["paperbag"] = { label = "Kantong Kertas", weight = 1, stack = false, degrade = 4320, decay = true, close = true, },
	["parachute"] = { label = "Parasut", weight = 8000, stack = false, degrade = 4320, decay = true, close = true, },
	["pinger"] = { label = "Pinger", weight = 1000, stack = false, degrade = 4320, decay = true, close = true, },
	["radio"] = { label = "Radio", weight = 500, stack = false, degrade = 4320, decay = true, close = true, },
	["radioscanner"] = { label = "Pemindai Radio", weight = 1000, stack = false, degrade = 4320, decay = true, close = true, },
	["screwdriverset"] = { label = "Set Peralatan", weight = 1000, stack = false, degrade = 4320, decay = true, close = true, },

	-- Police
	["armor"] = { label = "Armor Ringan", weight = 1000, stack = true, degrade = 4320, decay = true, close = true, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, client = { anim = 'armor', usetime = 6000 }, },
	["empty_evidence_bag"] = { label = "Kantong Barang Bukti", weight = 0, stack = true, degrade = 4320, decay = true, close = true, },
	["filled_evidence_bag"] = { label = "Barang Bukti", weight = 200, stack = true, degrade = 4320, decay = true, close = true, },
	["handcuffs"] = { label = "Borgol", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["heavyarmor"] = { label = "Armor Berat", weight = 2000, stack = true, degrade = 4320, decay = true, close = true, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, client = { anim = 'armor', usetime = 6000 }, },
	["police_stormram"] = { label = "Besi Pembobol", weight = 18000, stack = true, degrade = 4320, decay = true, close = true, },

	-- Card
	["driver_license"] = { label = "SIM", weight = 0, stack = false, close = true, },
	["id_card"] = { label = "KTP", weight = 0, stack = false, close = true, },
	["identification"] = { label = "Identification", weight = 0, stack = false, close = true, },
	["gun_license"] = { label = "Lisensi Senjata", weight = 0, stack = false, close = true, },
	["hunting_license"] = { label = "Lisensi Berburu", weight = 0, stack = false, close = true, },
	["police_license"] = { label = "Lencana Polisi", weight = 0, stack = false, close = true, },

	-- Farming
	["farm_cabbage"] = { label = "Kubis", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_chilli"] = { label = "Cabai", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_coffee"] = { label = "Kopi", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_fabric"] = { label = "Kain", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_leather"] = { label = "Kulit", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_lemon"] = { label = "Lemon", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_onion"] = { label = "Bawang", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_paddy"] = { label = "Padi", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_potato"] = { label = "Kentang", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_tea"] = { label = "Daun Teh", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_thread"] = { label = "Benang", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_tomato"] = { label = "Tomat", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_wool"] = { label = "Wol", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_milk"] = { label = "Susu Botol", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_bottle"] = { label = "Botol Kosong", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["can_empty"] = { label = "Ember Kosong", weight = 500, stack = true, degrade = 4320, decay = true, close = true, },
	["can_filled_milk"] = { label = "Ember Susu", weight = 1000, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_scisor"] = { label = "Gunting Khusus", weight = 500, stack = false, degrade = 4320, decay = true, close = true, },
	["farm_shovel"] = { label = "Sekop", weight = 500, stack = false, degrade = 4320, decay = true, close = true, },
	["farm_male_seed"] = { label = "Bibit Jantan", weight = 0, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_tub"] = { label = "Pot Tanaman", weight = 100, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_fertilizer"] = { label = "Pupuk Tanaman", weight = 200, stack = true, degrade = 4320, decay = true, close = true, },
	["farm_meat"] = { label = "Daging", weight = 200, stack = true, degrade = 4320, decay = true, close = true, allowArmed = true, },
	["can_filled_water"] = { label = "Ember Air", weight = 1000, stack = true, degrade = 4320, decay = true, close = true, },

	-- Store Robbery
	["stickynote"] = { label = "Nota Tempel", weight = 0, stack = false, degrade = 60, decay = true, close = true, },

	-- Bank Robbery
	["cryptostick"] = { label = "USB Crypto", weight = 200, stack = true, degrade = 4320, decay = true, },
	["drill"] = { label = "Bor", weight = 20000, stack = false, degrade = 4320, decay = true, },
	["electronickit"] = { label = "Alat Elektronik", weight = 100, stack = true, degrade = 4320, decay = true, },
	["goldbar"] = { label = "Emas Batangan", weight = 7000, stack = true, degrade = 4320, decay = true, },
	["security_card_01"] = { label = "Kartu Keamanan A", weight = 0, stack = true, degrade = 4320, decay = true, },
	["security_card_02"] = { label = "Kartu Keamanan B", weight = 0, stack = true, degrade = 4320, decay = true, },
	["thermite"] = { label = "Termit", weight = 1000, stack = true, degrade = 4320, decay = true, },
	["trojan_usb"] = { label = "USB Trojan", weight = 0, stack = true, degrade = 4320, decay = true, },

	-- Material
	["gunpowder"] = { label = "Bubuk Misiu", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },
	["plastic"] = { label = "Plastik", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },
	["recyclescrap"] = { label = "Sampah", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },
	["aluminum"] = { label = "Alumunium", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },
	["steel"] = { label = "Baja", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },
	["rubber"] = { label = "Karet", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },
	["glass"] = { label = "Kaca", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },
	["lcd"] = { label = "LCD", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },
	["pcbplate"] = { label = "Papan PCB", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },
	["wire"] = { label = "Kabel", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },
	["fabric"] = { label = "Kain", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },

	-- Mining
	["stone"] = { label = "Batu", weight = 2000, stack = true, degrade = 10080, decay = true, close = true, },
	["sulfur"] = { label = "Sulfur", weight = 100, stack = true, degrade = 10080, decay = true, close = true, },
	["carbon"] = { label = "Karbon", weight = 100, stack = true, degrade = 10080, decay = true, close = true, },
	["goldingot"] = { label = "Emas Batang", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },
	["goldore"] = { label = "Biji Emas", weight = 100, stack = true, degrade = 10080, decay = true, close = true, },
	["silveringot"] = { label = "Perak Batang", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },
	["silverore"] = { label = "Biji Perak", weight = 100, stack = true, degrade = 10080, decay = true, close = true, },
	["copper"] = { label = "Tembaga", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },
	["copperore"] = { label = "Biji Tembaga", weight = 100, stack = true, degrade = 10080, decay = true, close = true, },
	["iron"] = { label = "Besi", weight = 0, stack = true, degrade = 10080, decay = true, close = true, },
	["ironore"] = { label = "Biji Besi", weight = 100, stack = true, degrade = 10080, decay = true, close = true, },
	["pickaxe"] = { label = "Kampak", weight = 5000, stack = false, degrade = 10080, decay = true, close = true, },
	["miningdrill"] = { label = "Bor", weight = 10000, stack = false, degrade = 10080, decay = true, close = true, },
	["mininglaser"] = { label = "Bor Laser", weight = 15000, stack = false, degrade = 10080, decay = true, close = true, },
	["drillbit"] = { label = "Mata Bor", weight = 100, stack = true, degrade = 10080, decay = true, close = true, },
	["goldpan"] = { label = "Papan Saring", weight = 500, stack = false, degrade = 10080, decay = true, close = true, },

	-- nt_documents
	["document"] = { label = "Dokumen", weight = 0, stack = false, close = true, },

	-- nt_cityhall
	["exam_paper"] = { label = "Kertas Ujian SIM", weight = 200, stack = false, degrade = 4320, decay = true, close = true, allowArmed = true, },

	-- cdn-fuel
	["jerrycan"] = { label = "Jerigen", weight = 1000, stack = false, degrade = 4320, decay = true, close = true, },
	["syphoningkit"] = { label = "Penyedot Bensin", weight = 1000, stack = false, degrade = 4320, decay = true, close = true, },

	-- nt_rental
	["rental_paper"] = { label = "Surat Sewa", weight = 200, stack = true, degrade = 4320, decay = true, close = true, allowArmed = true, },

    -- nt_obd
	["obd_tools"] = { label = "OBD Tools", weight = 200, stack = true, degrade = 4320, decay = true, close = true, allowArmed = true, },

    -- jim-mechanic
    ["mechanic_tools"] = {
        label = "Mechanic tools", weight = 0, stack = false, close = true, description = "Needed for vehicle repairs",
        client = { image = "mechanic_tools.png", event = "jim-mechanic:client:Repair:Check" }
    },
    ["toolbox"] = {
        label = "Toolbox", weight = 0, stack = false, close = true, description = "Needed for Performance part removal",
        client = { image = "toolbox.png", event = "jim-mechanic:client:Menu" }
    },
    ["ducttape"] = {
        label = "Duct Tape", weight = 0, stack = false, close = true, description = "Good for quick fixes",
        client = { image = "bodyrepair.png", event = "jim-mechanic:quickrepair" }
    },
    ['mechboard'] = { label = 'Mechanic Sheet', weight = 0, stack = false, close = false,
        buttons = {
            { 	label = 'Copy Parts List',
                action = function(slot)
                    local item = exports.ox_inventory:Search('slots', 'mechboard')
                    for _, v in pairs(item) do
                        if (v.slot == slot) then lib.setClipboard(v.metadata.info.vehlist) break end
                    end
                end },
            { 	label = 'Copy Plate Number',
                action = function(slot)
                    local item = exports.ox_inventory:Search('slots', 'mechboard')
                    for _, v in pairs(item) do
                        if (v.slot == slot) then lib.setClipboard(v.metadata.info.vehplate) break end
                    end
                end },
            {	label = 'Copy Vehicle Model',
                action = function(slot)
                    local item = exports.ox_inventory:Search('slots', 'mechboard')
                    for _, v in pairs(item) do
                        if (v.slot == slot) then lib.setClipboard(v.metadata.info.veh) break  end
                    end
                end },
        },
    },
    --Performance
    ["turbo"] = {
        label = "Supercharger Turbo", weight = 0, stack = false, close = true, description = "Who doesn't need a 65mm Turbo??",
        client = { image = "turbo.png", event = "jim-mechanic:client:applyTurbo", remove = false },
    },
    ["car_armor"] = {
        label = "Vehicle Armor", weight = 0, stack = false, close = true, description = "",
        client = { image = "armour.png", event = "jim-mechanic:client:applyArmour", remove = false },
    },
    ["nos"] = {
        label = "NOS Bottle", weight = 0, stack = false, close = true, description = "A full bottle of NOS",
        client = { image = "nos.png", event = "jim-mechanic:client:applyNOS", },
    },
    ["noscan"] = {
        label = "Empty NOS Bottle", weight = 0, stack = true, close = true, description = "An Empty bottle of NOS",
        client = { image = "noscan.png", }
    },
    ["noscolour"] = {
        label = "NOS Colour Injector", weight = 0, stack = true, close = true, description = "Make that purge spray",
        client = { image = "noscolour.png", }
    },
    
    ["engine1"] = {
        label = "Tier 1 Engine", weight = 0, stack = false, close = true, description = "",
        client = { image = "engine1.png",  event = "jim-mechanic:client:applyEngine", level = 0, remove = false },
    },
    ["engine2"] = {
        label = "Tier 2 Engine", weight = 0, stack = false, close = true, description = "",
        client = { image = "engine2.png",  event = "jim-mechanic:client:applyEngine", level = 1, remove = false },
    },
    ["engine3"] = {
        label = "Tier 3 Engine", weight = 0, stack = false, close = true, description = "",
        client = { image = "engine3.png",  event = "jim-mechanic:client:applyEngine", level = 2, remove = false },
    },
    ["engine4"] = {
        label = "Tier 4 Engine", weight = 0, stack = false, close = true, description = "",
        client = { image = "engine4.png",  event = "jim-mechanic:client:applyEngine", level = 3, remove = false },
    },
    ["engine5"] = {
        label = "Tier 5 Engine", weight = 0, stack = false, close = true, description = "",
        client = { image = "engine5.png",  event = "jim-mechanic:client:applyEngine", level = 4, remove = false },
    },
    
    ["transmission1"] = {
        label = "Tier 1 Transmission", weight = 0, stack = false, close = true, description = "",
        client = { image = "transmission1.png",  event = "jim-mechanic:client:applyTransmission", level = 0, remove = false },
    },
    ["transmission2"] = {
        label = "Tier 2 Transmission", weight = 0, stack = false, close = true, description = "",
        client = { image = "transmission2.png",  event = "jim-mechanic:client:applyTransmission", level = 1, remove = false },
    },
    ["transmission3"] = {
        label = "Tier 3 Transmission", weight = 0, stack = false, close = true, description = "",
        client = { image = "transmission3.png",  event = "jim-mechanic:client:applyTransmission", level = 2, remove = false },
    },
    ["transmission4"] = {
        label = "Tier 4 Transmission", weight = 0, stack = false, close = true, description = "",
        client = { image = "transmission4.png",  event = "jim-mechanic:client:applyTransmission", level = 3, remove = false },
    },
    
    ["brakes1"] = {
        label = "Tier 1 Brakes", weight = 0, stack = false, close = true, description = "",
        client = { image = "brakes1.png",  event = "jim-mechanic:client:applyBrakes", level = 0, remove = false },
    },
    ["brakes2"] = {
        label = "Tier 2 Brakes", weight = 0, stack = false, close = true, description = "",
        client = { image = "brakes2.png",  event = "jim-mechanic:client:applyBrakes", level = 1, remove = false },
    },
    ["brakes3"] = {
        label = "Tier 3 Brakes", weight = 0, stack = false, close = true, description = "",
        client = { image = "brakes3.png",  event = "jim-mechanic:client:applyBrakes", level = 2, remove = false },
    },
    
    ["suspension1"] = {
        label = "Tier 1 Suspension", weight = 0, stack = false, close = true, description = "",
        client = { image = "suspension1.png", event = "jim-mechanic:client:applySuspension",  level = 0, remove = false },
    },
    ["suspension2"] = {
        label = "Tier 2 Suspension", weight = 0, stack = false, close = true, description = "",
        client = { image = "suspension2.png", event = "jim-mechanic:client:applySuspension", level = 1, remove = false },
    },
    ["suspension3"] = {
        label = "Tier 3 Suspension", weight = 0, stack = false, close = true, description = "",
        client = { image = "suspension3.png", event = "jim-mechanic:client:applySuspension", level = 2, remove = false },
    },
    ["suspension4"] = {
        label = "Tier 4 Suspension", weight = 0, stack = false, close = true, description = "",
        client = { image = "suspension4.png", event = "jim-mechanic:client:applySuspension", level = 3, remove = false },
    },
    ["suspension5"] = {
        label = "Tier 5 Suspension", weight = 0, stack = false, close = true, description = "",
        client = { image = "suspension5.png", event = "jim-mechanic:client:applySuspension", level = 4, remove = false },
    },
    
    ["bprooftires"] = {
        label = "Bulletproof Tires", weight = 0, stack = false, close = true, description = "",
        client = { image = "bprooftires.png", event = "jim-mechanic:client:applyBulletProof", remove = false },
    },
    ["drifttires"] = {
        label = "Drift Tires", weight = 0, stack = false, close = true, description = "",
        client = { image = "drifttires.png", event = "jim-mechanic:client:applyDrift", remove = false },
    },
    
    ["oilp1"] = {
        label = "Tier 1 Oil Pump", weight = 0, stack = false, close = true, description = "",
        client = { image = "oilp1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "oilp", remove = false },
    },
    ["oilp2"] = {
        label = "Tier 2 Oil Pump", weight = 0, stack = false, close = true, description = "",
        client = { image = "oilp2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "oilp", remove = false },
    },
    ["oilp3"] = {
        label = "Tier 3 Oil Pump", weight = 0, stack = false, close = true, description = "",
        client = { image = "oilp3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "oilp", remove = false },
    },
    
    ["drives1"] = {
        label = "Tier 1 Drive Shaft", weight = 0, stack = false, close = true, description = "",
        client = { image = "drives1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "drives", remove = false },
    },
    ["drives2"] = {
        label = "Tier 2 Drive Shaft", weight = 0, stack = false, close = true, description = "",
        client = { image = "drives2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "drives", remove = false },
    },
    ["drives3"] = {
        label = "Tier 3 Drive Shaft", weight = 0, stack = false, close = true, description = "",
        client = { image = "drives3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "drives", remove = false },
    },
    
    ["cylind1"] = {
        label = "Tier 1 Cylinder Head", weight = 0, stack = false, close = true, description = "",
        client = { image = "cylind1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "cylind", remove = false },
    },
    ["cylind2"] = {
        label = "Tier 2 Cylinder Head", weight = 0, stack = false, close = true, description = "",
        client = { image = "cylind2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "cylind", remove = false },
    },
    ["cylind3"] = {
        label = "Tier 3 Cylinder Head", weight = 0, stack = false, close = true, description = "",
        client = { image = "cylind3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "cylind", remove = false },
    },
    
    ["cables1"] = {
        label = "Tier 1 Battery Cables", weight = 0, stack = false, close = true, description = "",
        client = { image = "cables1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "cables", remove = false },
    },
    ["cables2"] = {
        label = "Tier 2 Battery Cables", weight = 0, stack = false, close = true, description = "",
        client = { image = "cables2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "cables", remove = false },
    },
    ["cables3"] = {
        label = "Tier 3 Battery Cables", weight = 0, stack = false, close = true, description = "",
        client = { image = "cables3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "cables", remove = false },
    },
    
    ["fueltank1"] = {
        label = "Tier 1 Fuel Tank", weight = 0, stack = false, close = true, description = "",
        client = { image = "fueltank1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "fueltank", remove = false },
    },
    ["fueltank2"] = {
        label = "Tier 2 Fuel Tank", weight = 0, stack = false, close = true, description = "",
        client = { image = "fueltank2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "fueltank", remove = false },
    },
    ["fueltank3"] = {
        label = "Tier 3 Fuel Tank", weight = 0, stack = false, close = true, description = "",
        client = { image = "fueltank3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "fueltank", remove = false },
    },
    
    ["antilag"] = {
        label = "AntiLag", weight = 0, stack = false, close = true, description = "",
        client = { image = "antiLag.png", event = "jim-mechanic:client:applyAntiLag", remove = false },
    },
    
    ["underglow_controller"] = {
        label = "Neon Controller", weight = 0, stack = false, close = true, description = "",
        client = { image = "underglow_controller.png", event = "jim-mechanic:client:neonMenu", },
    },
    ["headlights"] = {
        label = "Xenon Headlights", weight = 0, stack = false, close = true, description = "",
        client = { image = "headlights.png", event = "jim-mechanic:client:applyXenons", },
    },
    
    ["tint_supplies"] = {
        label = "Window Tint Kit", weight = 0, stack = false, close = true, description = "",
        client = { image = "tint_supplies.png", event = "jim-mechanic:client:Cosmetic:Check", },
    },
    
    ["customplate"] = {
        label = "Customized Plates", weight = 0, stack = false, close = true, description = "",
        client = { image = "plate.png", event = "jim-mechanic:client:Cosmetic:Check", },
    },
    ["hood"] = {
        label = "Vehicle Hood", weight = 0, stack = false, close = true, description = "",
        client = { image = "hood.png", event = "jim-mechanic:client:Cosmetic:Check", },
    },
    ["roof"] = {
        label = "Vehicle Roof", weight = 0, stack = false, close = true, description = "",
        client = { image = "roof.png", event = "jim-mechanic:client:Cosmetic:Check", },
    },
    ["spoiler"] = {
        label = "Vehicle Spoiler", weight = 0, stack = false, close = true, description = "",
        client = { image = "spoiler.png", event = "jim-mechanic:client:Cosmetic:Check", },
    },
    ["bumper"] = {
        label = "Vehicle Bumper", weight = 0, stack = false, close = true, description = "",
        client = { image = "bumper.png", event = "jim-mechanic:client:Cosmetic:Check", },
    },
    ["skirts"] = {
        label = "Vehicle Skirts", weight = 0, stack = false, close = true, description = "",
        client = { image = "skirts.png", event = "jim-mechanic:client:Cosmetic:Check", },
    },
    ["exhaust"] = {
        label = "Vehicle Exhaust", weight = 0, stack = false, close = true, description = "",
        client = { image = "exhaust.png", event = "jim-mechanic:client:Cosmetic:Check", },
    },
    ["seat"] = {
        label = "Seat Cosmetics", weight = 0, stack = false, close = true, description = "",
        client = { image = "seat.png", event = "jim-mechanic:client:Cosmetic:Check", },
    },
    ["rollcage"] = {
        label = "Roll Cage", weight = 0, stack = false, close = true, description = "",
        client = { image = "rollcage.png", event = "jim-mechanic:client:Cosmetic:Check", },
    },
    
    ["rims"] = {
        label = "Custom Wheel Rims", weight = 0, stack = false, close = true, description = "",
        client = { image = "rims.png", event = "jim-mechanic:client:Rims:Check", },
    },
    
    ["livery"] = {
        label = "Livery Roll", weight = 0, stack = false, close = true, description = "",
        client = { image = "livery.png", event = "jim-mechanic:client:Cosmetic:Check", },
    },
    ["paintcan"] = {
        label = "Vehicle Spray Can", weight = 0, stack = false, close = true, description = "",
        client = { image = "spraycan.png", event = "jim-mechanic:client:Paints:Check", },
    },
    ["tires"] = {
        label = "Drift Smoke Tires", weight = 0, stack = false, close = true, description = "",
        client = { image = "tires.png", event = "jim-mechanic:client:Tires:Check", },
    },
    
    ["horn"] = {
        label = "Custom Vehicle Horn", weight = 0, stack = false, close = true, description = "",
        client = { image = "horn.png", event = "jim-mechanic:client:Cosmetic:Check", },
    },
    
    ["internals"] = {
        label = "Internal Cosmetics", weight = 0, stack = false, close = true, description = "",
        client = { image = "internals.png", event = "jim-mechanic:client:Cosmetic:Check", },
    },
    ["externals"] = {
        label = "Exterior Cosmetics", weight = 0, stack = false, close = true, description = "",
        client = { image = "mirror.png", event = "jim-mechanic:client:Cosmetic:Check", },
    },
    
    ["newoil"] = {
        label = "Car Oil", weight = 0, stack = false, close = true, description = "",
        client = { image = "caroil.png", },
    },
    ["sparkplugs"] = {
        label = "Spark Plugs", weight = 0, stack = false, close = true, description = "",
        client = { image = "sparkplugs.png", },
    },
    ["carbattery"] = {
        label = "Car Battery", weight = 0, stack = false, close = true, description = "",
        client = { image = "carbattery.png", },
    },
    ["axleparts"] = {
        label = "Axle Parts", weight = 0, stack = false, close = true, description = "",
        client = { image = "axleparts.png", },
    },
    ["sparetire"] = {
        label = "Spare Tire", weight = 0, stack = false, close = true, description = "",
        client = { image = "sparetire.png", },
    },
    
    ["harness"] = {
        label = "Race Harness", weight = 0, stack = true, close = true, description = "Racing Harness so no matter what you stay in the car",
        client = { image = "harness.png", event = "jim-mechanic:client:applyHarness", remove = false },
    },
    
    ["manual"] = {
        label = "Manual Transmission", weight = 0, stack = true, close = true, description = "Manual Transmission change for vehicles",
        client = { image = "manual.png", event = "jim-mechanic:client:applyManual", remove = false },
    },
    
    ["underglow"] = {
        label = "Underglow LEDS", weight = 0, stack = true, close = true, description = "Underglow addition for vehicles",
        client = { image = "underglow.png", event = "jim-mechanic:client:applyUnderglow", remove = false },
    },
    
    -- ["cleaningkit"] = {
    --     label = "Cleaning Kit", weight = 0, stack = true, close = true, description = "A microfiber cloth with some soap will let your car sparkle again!",
    --     client = { image = "cleaningkit.png", event = "jim-mechanic:client:cleanVehicle"},
    -- },
    --[[["repairkit"] = {
        label = "Repairkit", weight = 0, stack = true, close = true, description = "A nice toolbox with stuff to repair your vehicle",
        client = { image = "repairkit.png", event = "jim-mechanic:vehFailure:RepairVehicle", item = "repairkit", full = false },
    },
    ["advancedrepairkit"] = {
        label = "Advanced Repairkit", weight = 0, stack = true, close = true, description = "A nice toolbox with stuff to repair your vehicle",
        client = { image = "advancedkit.png", event = "jim-mechanic:vehFailure:RepairVehicle", item = "advancedrepairkit", full = true },
    },]]
}