return {
	["money"] = { label = "Koin Perak", weight = 0, stack = true, close = true, width = 1, height = 1, description = "Alat tukar terkecil saat ini.", allowArmed = true, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'vw_prop_vw_coin_01a' },

	--nt_hunting
	["meat_small"] = { label = "Daging Kecil", weight = 500, stack = true, degrade = 10080, decay = true, width = 1, height = 1, description = "Potongan kecil daging hewan buruan. Mungkin bisa dimasak menjadi sesuatu.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'prop_cs_steak' },
	["meat_big"] = { label = "Daging Besar", weight = 1000, stack = true, degrade = 10080, decay = true, width = 1, height = 1, description = "Potongan besar daging hewan buruan. Bisa dipotong kecil-kecil dengan pisau tajam.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'prop_cs_steak' },
	["meat_fat"] = { label = "Daging Lemak", weight = 500, stack = true, degrade = 10080, decay = true, width = 1, height = 1, description = "Potongan lemak hewan buruan. Bisa digunakan jadi bahan makanan atau sesuatu yang berguna.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'prop_cs_steak' },
	["animal_skin"] = { label = "Kulit Binatang", weight = 500, stack = true, degrade = 10080, decay = true, width = 1, height = 1, description = "Kulit binatang yang bisa diolah menjadi bahan kain.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'v_res_tre_cushionc' },
	
	--nt_camping
	["tent"] = { label = "Tenda", weight = 1000, stack = false, close = true, width = 4, height = 4, description = "Tenda yang berguna saat sedang diluar.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'prop_nigel_bag_pickup' },
	["campfire"] = { label = "Batang Kayu", weight = 500, stack = false, degrade = 10080, decay = true, width = 2, height = 2, description = "Tumpukan batang kayu yang dapat dibakar untuk menghangatkan diri.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'log_campfire' },
	
	--ox_inventory
	["snikkel_candy"] = { label = "Coklat Batangan", weight = 500, stack = true, degrade = 10080, decay = true, close = true, width = 1, height = 1, description = "Makanan kecil untuk bertahan hidup.", disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { hunger = 5, thirst = -5 }, anim = 'eating', prop = 'egobar', usetime = 6000 }, model = 'prop_choc_ego' },
	["water_bottle"] = { label = "Air Mineral Botol", weight = 500, stack = true, degrade = 10080, decay = true, close = true, width = 1, height = 2, description = "Air minum bersih untuk bertahan hidup.", disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { thirst = 40 }, anim = 'drinking', prop = 'water', usetime = 6000 }, model = 'prop_ld_flow_bottle' },
	["steak"] = { label = "Steak Daging", weight = 200, stack = true, degrade = 4320, decay = true, close = true, width = 1, height = 1, description = "Daging yang dibakar dengan arang. Rasanya tidak terlalu nikmat, tapi cukup untuk bertahan.", disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { hunger = 100 }, anim = 'eating', prop = 'beef', usetime = 10000 }, model = 'prop_cs_steak' },
	["satay"] = { label = "Sate Daging", weight = 100, stack = true, degrade = 4320, decay = true, close = true, width = 1, height = 1, description = "Sate daging yang dibakar perlahan. Rasanya biasa saja dan tidak terlalu mengenyangkan.", disable = { move = false, car = false, combat = true, mouse = false, sprint = true }, client = { status = { hunger = 20, thirst = -5 }, anim = 'eating', prop = 'beef', usetime = 6000 }, model = 'prop_cs_steak' },
	
	--qbx_binocular
	["binoculars"] = { label = "Teropong", weight = 500, stack = false, degrade = 4320, decay = true, close = true, width = 1, height = 1, description = "Alat untuk melihat jarak jauh.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'prop_binoc_01' },
	
	--mm-radio
	["radio"] = { label = "Radio", weight = 500, stack = false, degrade = 10080, decay = true, close = true, width = 1, height = 2, description = "Alat komunikasi praktis yang masih dapat digunakan saat ini.", allowArmed = true, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'prop_cs_hand_radio' },
	["jammer"] = { label = "Jammer Radio", weight = 10000, stack = false, degrade = 10080, decay = true, close = true, width = 1, height = 5, description = "Alat untuk mengganggu sinyal radio.", allowArmed = true, disable = { move = true, car = true, combat = true, mouse = false, sprint = true },
		client = { event = 'mm_radio:client:usejammer' },
		model = 'm25_1_prop_m51_duffbag_c4_01a'
	},
	["radiocell"] = { label = "Batrai Radio", weight = 100, stack = true, degrade = 10080, decay = true, width = 1, height = 1, allowArmed = true, disable = { move = true, car = true, combat = true, mouse = false, sprint = true },
		client = { event = 'mm_radio:client:recharge' },
		model = 'apa_mpa2_bath_plug'
	},

	--qbx_ambulancejob
	["bandage"] = { label = "Perban", weight = 500, stack = true, degrade = 4320, decay = true, close = true, width = 1, height = 1, description = "Kain penutup luka.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'prop_rolled_sock_02' },
	["firstaid"] = { label = "P3K Medis", weight = 1000, stack = true, degrade = 4320, decay = true, close = true, width = 2, height = 2, description = "Peralatan medis sederhana.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'v_ret_ta_firstaid' },
	["ifaks"] = { label = "P3K Personal", weight = 1000, stack = true, degrade = 4320, decay = true, close = true, width = 2, height = 1, description = "Peralatan medis sederhana.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'v_ret_ta_firstaid' },
	["painkillers"] = { label = "Pereda Rasa Sakit", weight = 100, stack = true, degrade = 4320, decay = true, close = true, width = 1, height = 1, description = "Pereda rasa sakit dan penghilang sakit kepala.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'prop_cs_pills' },

	--ox_inventory/module/items/server
	["armor"] = { label = "Armor Ringan", weight = 1000, stack = true, degrade = 10080, decay = true, close = true, width = 2, height = 2, description = "Pelindung badan ringan.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'prop_armour_pickup' },
	["heavyarmor"] = { label = "Armor Berat", weight = 2000, stack = true, degrade = 10080, decay = true, close = true, width = 2, height = 2, description = "Pelindung badan berat.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'prop_bodyarmour_03' },
	
	--nt_crafting
	["recyclescrap"] = { label = "Sampah Daur Ulang", weight = 100, stack = true, degrade = 10080, decay = true, close = true, width = 2, height = 2, description = "Kumpulan sampah daur ulang yang dapat diolah menjadi barang yang berguna. Barang ini juga berguna untuk menghangatkan diri.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'prop_cs_sack_01' },

	--nt_companion
	["a_c_cat"] = { label = "Kucing", weight = 1000, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_cat' },
	["a_c_coyote"] = { label = "Anjing Hutan", weight = 5000, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_coyote' },
	["a_c_hen"] = { label = "Ayam", weight = 1000, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_hen' },
	["a_c_husky"] = { label = "Husky", weight = 5000, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_husky' },
	["a_c_k9"] = { label = "Anjing K9", weight = 5000, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_k9' },
	["a_c_mtlion"] = { label = "Harimau Gunung", weight = 8000, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_mtlion' },
	["a_c_panther"] = { label = "Harimau Kumbang", weight = 8000, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_panther' },
	["a_c_puddle"] = { label = "Puddle", weight = 3000, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_puddle' },
	["a_c_pug"] = { label = "Pug", weight = 5000, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_pug' },
	["a_c_rabbit"] = { label = "Kelinci", weight = 500, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_rabbit' },
	["a_c_rat"] = { label = "Tikus", weight = 200, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_rat' },
	["a_c_retriever"] = { label = "Retriever", weight = 5000, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_retriever' },
	["a_c_rottweiler"] = { label = "Rottweiler", weight = 5000, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_rottweiler' },
	["a_c_shepherd"] = { label = "Shepherd", weight = 5000, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_shepherd' },
	["a_c_westy"] = { label = "Westy", weight = 3000, stack = false, close = true, width = 5, height = 5, disable = { move = true, car = true, combat = true, mouse = false, sprint = true }, model = 'a_c_westy' },
	["petcollar"] = { label = "Kalung Hewan", weight = 100, stack = true, degrade = 10080, decay = true, close = true, width = 1, height = 1, disable = { move = true, car = true, combat = true, mouse = false, sprint = true },  },
	["petfirstaid"] = { label = "Obat Hewan", weight = 500, stack = true, degrade = 10080, decay = true, close = true, width = 1, height = 1, description = "Obat untuk mengobati hewan peliharaan dari kematian.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true },  },
	["petfood"] = { label = "Makanan Hewan", weight = 500, stack = true, degrade = 10080, decay = true, close = true, width = 1, height = 1, disable = { move = true, car = true, combat = true, mouse = false, sprint = true },  },
	["petgroomingkit"] = { label = "Peralatan Hewan", weight = 500, stack = true, degrade = 10080, decay = true, close = true, width = 1, height = 1, disable = { move = true, car = true, combat = true, mouse = false, sprint = true },  },
	["petnametag"] = { label = "Label Hewan", weight = 100, stack = true, degrade = 10080, decay = true, close = true, width = 1, height = 1, disable = { move = true, car = true, combat = true, mouse = false, sprint = true },  },
	["petwaterbottleportable"] = { label = "Botol Minum Hewan", weight = 500, stack = true, degrade = 10080, decay = true, close = true, width = 1, height = 1, description = "Air untuk hewan peliharaan. Jangan mencoba meminum ini.", disable = { move = true, car = true, combat = true, mouse = false, sprint = true },  },

	--ox_inventory
	["paperbag"] = { label = "Kantong Kertas", weight = 100, stack = false, degrade = 0, close = true, width = 1, height = 1, disable = { move = true, car = true, combat = true, mouse = false, sprint = true },  },
	["backpack_small"] = { label = "Tas Kecil", weight = 500, stack = false, degrade = 0, close = true, width = 2, height = 2, disable = { move = true, car = true, combat = true, mouse = false, sprint = true },  },
	["backpack_medium"] = { label = "Tas Sedang", weight = 1000, stack = false, degrade = 0, close = true, width = 2, height = 3, disable = { move = true, car = true, combat = true, mouse = false, sprint = true },  },
	["backpack_large"] = { label = "Tas Besar", weight = 1500, stack = false, degrade = 0, close = true, width = 3, height = 3, disable = { move = true, car = true, combat = true, mouse = false, sprint = true },  },

	--nt_smallresources
	["map"] = { label = "Map", weight = 100, stack = false, degrade = 0, width = 1, height = 1,  },
}