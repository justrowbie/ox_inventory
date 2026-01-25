return {
	-- Utama
	["money"] = { label = "Uang", weight = 0, stack = true, close = true, allowArmed = true, },
	["black_money"] = { label = "Uang Curian", weight = 0, stack = true, close = true, allowArmed = true, },
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
	["snikkel_candy"] = { label = "Coklat Snikkel", model = "prop_choc_ego", weight = 100, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { hunger = 20 }, anim = 'eating', prop = 'egobar', usetime = 6000 }, },
	["twerks_candy"] = { label = "Coklat Twerks", model = "prop_candy_01", weight = 100, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { hunger = 20 }, anim = 'eating', prop = 'egobar', usetime = 6000 }, },
	["tosti"] = { label = "Roti Keju", model = "prop_sandwich_01", weight = 100, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { hunger = 10 }, anim = 'eating', prop = 'msandwhich', usetime = 6000 }, },
	["sandwich"] = { label = "Sandwich", model = "prop_sandwich_01", weight = 100, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { hunger = 10 }, anim = 'eating', prop = 'sandwich', usetime = 6000 }, },

	-- Drink
	["water_bottle"] = { label = "Air Mineral", model = "prop_ld_flow_bottle", weight = 100, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { thirst = 15 }, anim = 'drinking', prop = 'water', usetime = 6000 }, },
	["ecola"] = { label = "Cola", model = "ng_proc_sodacan_01a", weight = 200, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { thirst = 15 }, anim = 'drinking', prop = 'ecola', usetime = 6000 }, },
	["ecola_light"] = { label = "Cola Light", model = "ng_proc_sodacan_01a", weight = 200, stack = true, degrade = 4320, decay = true, close = true, disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { thirst = 10 }, anim = 'drinking', prop = 'ecola', usetime = 6000 }, },
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
    
    -- nt_activities: hunting
    ["carcass_boar"] = { label = "Tubuh Babi Hutan", model = "a_c_boar", weight = 30000, stack = false, degrade = 4320, decay = true, close = true, allowArmed = false,
		client = {
            add = function()
                exports.nt_activities:CarryCarcass()
            end,
            remove = function()
				exports.nt_activities:CarryCarcass()
            end
        }
    },
    ["carcass_hawk"] = { label = "Tubuh Burung Elang", model = "a_c_chickenhawk", weight = 2000, stack = false, degrade = 4320, decay = true, close = true, allowArmed = false,
		client = {
            add = function()
                exports.nt_activities:CarryCarcass()
            end,
            remove = function()
				exports.nt_activities:CarryCarcass()
            end
        }
    },
    ["carcass_cormorant"] = { label = "Tubuh Burung Pucuk", model = "a_c_cormorant", weight = 2000, stack = false, degrade = 4320, decay = true, close = true, allowArmed = false,
		client = {
            add = function()
                exports.nt_activities:CarryCarcass()
            end,
            remove = function()
				exports.nt_activities:CarryCarcass()
            end
        }
    },
    ["carcass_coyote"] = { label = "Tubuh Anjing Hutan", model = "a_c_coyote", weight = 15000, stack = false, degrade = 4320, decay = true, close = true, allowArmed = false,
		client = {
            add = function()
                exports.nt_activities:CarryCarcass()
            end,
            remove = function()
				exports.nt_activities:CarryCarcass()
            end
        }
    },
    ["carcass_deer"] = { label = "Tubuh Rusa", model = "a_c_deer", weight = 20000, stack = false, degrade = 4320, decay = true, close = true, allowArmed = false,
		client = {
            add = function()
                exports.nt_activities:CarryCarcass()
            end,
            remove = function()
				exports.nt_activities:CarryCarcass()
            end
        }
    },
    ["carcass_mtlion"] = { label = "Tubuh Singa Gunung", model = "a_c_mtlion", weight = 20000, stack = false, degrade = 4320, decay = true, close = true, allowArmed = false,
		client = {
            add = function()
                exports.nt_activities:CarryCarcass()
            end,
            remove = function()
				exports.nt_activities:CarryCarcass()
            end
        }
    },
    ["carcass_rabbit"] = { label = "Tubuh Kelinci", model = "a_c_rabbit_01", weight = 3000, stack = false, degrade = 4320, decay = true, close = true, allowArmed = false,
		client = {
            add = function()
                exports.nt_activities:CarryCarcass()
            end,
            remove = function()
				exports.nt_activities:CarryCarcass()
            end
        }
    },
}