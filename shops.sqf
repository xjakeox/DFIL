if(isServer)then

{

INV_itemstocks = 

[
//fs
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
//is
-1,
-1,
-1,
//cf
-1,
//pub
-1,
-1,
-1,
-1,
//gs
-1,
-1,
-1,
-1,
//es
-1,
//gc
-1,
//cu
-1,
//cs
-1,
-1,
//sc
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
//tahoe
-1,
//ps
-1,
//tx
-1,
//mbs
-1,
-1,
-1,
//ts
-1,
//bss
-1,
//as
-1,
-1,
-1,
-1,
//sb
-1,
//bs
-1,
-1,
-1,
-1,
-1,
//bt
-1,
//Jewelry shop
-1,
//insurance
-1,
//td
-1,
//rs
-1,
//gds
-1,
-1,
-1,
//os & ukp
-1,
-1,
//ws
-1,
//terror
-1,
//barely legal
-1,
//ga
-1,
-1,
-1,
-1,
//ds
-1,
-1,
-1,
-1,
-1,
-1,
-1,
//ca, cv, cs, cp, cr, cs
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
//Donator shop
-1,
//UKGrGiB
-1,
//CopShopTRAINEDUKG3
-1,
-1,
-1,
-1,
-1,
-1,
-1, // ps
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1
];

publicvariable "INV_itemstocks";

};

INV_itemmaxstocks = 

[
//fs
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
//is
-1,
-1,
-1,
//cf
-1,
//pub
-1,
-1,
-1,
-1,
//gs
-1,
-1,
-1,
-1,
//es
-1,
//gc
-1,
//cu
-1,
//cs
-1,
-1,
//sc
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
//tahoe
-1,
//ps
-1,
//tx
-1,
//mbs
-1,
-1,
-1,
//ts & ukpts
-1,
-1,
//bss
-1,
//as
-1,
-1,
-1,
-1,
//sb
-1,
//bs's & ukpbs last
-1,
-1,
-1,
-1,
-1,
-1,
//bt
-1,
//Jewelry shop
-1,
//insurance
-1,
//td
-1,
//rs
-1,
//gds
-1,
-1,
-1,
//os
-1,
//ws
-1,
//terror
-1,
//barelylegal
-1,
//ga
-1,
-1,
-1,
-1,
//ds
-1,
-1,
-1,
-1,
-1,
-1,
-1,
//ca, cv, cs, cp, cr, cs
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
//Donator shop
-1,
//CopShopTRAINEDUKG
-1,
-1,
-1,
-1,
-1,
-1, // ps
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1

];

// Shop items

_emptyshop = [];
//Fuel Shop
_fs = ["Fuelline","reparaturkit","tcgmp","doshd","gdar","bjerk","wulf"];
_fs2 =["fishingpole","tcgmp","rawcow","boar","doshd","gdar","bjerk","wulf","Huntingrifle","5x_22_LR_17_HMR","MBG_Compound_Bow","MBG_Arrow_N","JoC_Flitsche","JoC_FlitschMag","tcg_remington","tcg_mossberg","tcg_combat","Saiga12K","LeeEnfield","10x_303","8Rnd_B_Saiga12_Pellets","8Rnd_B_Beneli_Pellets","KPFS_KarS","KPFS_10Rnd_762x39_SKS"];
//Item Shop
_is = ["apple","straw","getreide","blowfish","mackerel","herring","perch","trout","walleye","bass","boar"];
//Copbasefood
_cf = ["wulf","bjerk","tcgmp","doshd"];
//Alcohol shop
_pub = ["beer","beer2","vodka","smirnoff","wiskey","wine","wine2"];
//Pistol Shop
_gss = ["RH_g19t","RH_17Rnd_9x19_g17","RH_p38","RH_8Rnd_9x19_p38","RH_tt33","RH_8Rnd_762_tt33","RH_browninghp","RH_13Rnd_9x19_bhp","RH_uspm","RH_12Rnd_45cal_usp","RH_usp","RH_15Rnd_9x19_usp","RH_mk2","RH_10Rnd_22LR_mk2","RH_m93r","RH_20Rnd_9x19_M93","RH_m9c","Rnd_9x19_M9","RH_anacg","RH_6Rnd_44_Mag","RH_python","RH_6Rnd_357_Mag","RH_deagle","RH_7Rnd_50_AE","RH_g17","RH_19Rnd_9x19_g18","RH_m1911old","RH_8Rnd_45cal_m1911","RH_bull","RH_6Rnd_44_Mag","C1987_P99_black","15Rnd_9x19_p99"];
_ass = ["RH_m9sd","15Rnd_9x19_M9SD","RH_g17sd","RH_17Rnd_9x19_g17SD","RH_m1911sd","RH_8Rnd_45cal_m1911","RH_mk22sd","RH_8Rnd_9x19_Mksd","RH_uzisd","RH_9mm_32RND_SD_Mag","C1987_P99_black_sd","15Rnd_9x19_p99_sd"];
_mgs = ["RH_mk22","RH_8Rnd_9x19_Mk","KPFS_MP2","KPFS_32Rnd_MP2","RH_muzi","RH_32rnd_9x19_Muzi","RH_uzi","RH_9mm_32RND_Mag","RH_tmpeot","30Rnd_9x19_MP5","RH_fmg9","RH_9mm_32RND_Mag","GPS","NVGoggles","CHRYSLER_B_limmo","tcg_taurus_security", "ilpd_ags_cvpi"];
//Equiptment shop
_es = ["Binocular","GPS","NVGoggles","hideout","fishingpole","Shovel","Pickaxe","JackHammer"];
//gocart
_gc = ["Da_kart"];
//Car Upgrades
_cu = ["isupgrade1","isupgrade2","isupgrade3"];
//Car Shop
_cs1 = ["MMT_USMC","Volha_1_TK_CIV_EP1","Volha_2_TK_CIV_EP1","Lada2_TK_CIV_EP1","S1203_TK_CIV_EP1","civic","Car_hatchback","VWGolf","Car_Sedan","SkodaBlue","Skodared","lada1","lada2","LandRover_TK_CIV_EP1","datsun1_civil_3_open","UAZ_Unarmed_TK_CIV_EP1","oldtruck","Tractor"];
_cs2 = ["MMT_USMC","tractor","oldtruc2","oldtruc2a"];
//Sports Car Shop
_sc1 = ["440cuda","roadrunner","roadrunner2","CHEVROLET_CAMARO_SS_396","chevrolet_chevelle","cuda","hemicuda","cd71hm","barcuda","fury","FORD_MUSTANG_SHELBY_COBRA","FORD_MUSTANG_SHELBY_COBRA1","FORD_MUSTANG_SHELBY_COBRA2","FORD_MUSTANG_SHELBY_COBRA3","FORD_GT","monaco_grey","monaco_blue","monaco_white","monaco_green","monaco_red","challenger_grey","challenger_blue","challenger_yellow","challenger_pink","challenger_white","challenger_green","challenger_red","challenger_orange"];
_sc2 = ["cl_charger","cl_charger_black","il_charger_blue","il_charger_red","il_charger_orange","MAZDA_RX_7","MAZDA_RX_71","MAZDA_RX_72","MAZDA_RX_73","MAZDA_RX_75","MAZDA_RX_74","MAZDA_MAZDASPEED_3"];
_sc3 = ["CHRYSLER_300","RENAULT_CLIO_SPORT_V6","SUBARU_IMPREZA_WRX_STI_AWD","SUBARU_IMPREZA_STI_AWD","FIAT_PUNTO","ALFA_ROMEO_BRERA","NISSAN_240SX_SE","PONTIAC_GTO_6"];
_sc4 = ["MustangGTRyellow_MLOD","Convertible_MLOD","FORD_SHELBY_GT","CHRYSLER_W_limmo","CORVETTE_Z06","INFINITI_G35","MERCEDES_BENZ_CLK_500","MERCEDES_BENZ_SL_65_AMG","JAGUAR_XK","CADILLAC_CTS"];
_sc5 = ["CL_PORSCHE_997","CL_LAMBORGHINI_GT3","KOENIGSEGG_CCX","KOENIGSEGG_CCX1","KOENIGSEGG_CCX2","KOENIGSEGG_CCX3","MCLAREN_F1","MERCEDES_BENZ_SLR","PORSCHE_997_GT3_RSR","PORSCHE_911_TURBO","PORSCHE_911_GT3_RS","LAMBORGHINI_MURCIELAGO","LAMBORGHINI_REVENTON","LAMBORGHINI_GALLARDO","MASERATI_MC12","JAGUAR_XK","BUGATTI_VEYRON","AUDI_TT_QUATTRO_S_LINE","AUDI_FSI_LE_MANS","PAGANI_ZONDA_F","ASTON_MARTIN_DB9"];
_sc6 = ["NISSAN_GTR_SPECV","NISSAN_GTR_SPECV1","NISSAN_GTR_SPECV2","NISSAN_GTR_SPECV3","NISSAN_350Z","NISSAN_370Z","NISSAN_370Z1","NISSAN_370Z2","NISSAN_370Z3","NISSAN_370Z4","NISSAN_SKYLINE_GT_R_Z","NISSAN_SKYLINE_GT_R_Z1","NISSAN_SKYLINE_GT_R_Z2","NISSAN_SKYLINE_GT_R_Z3"];
_sc7 = ["350z_red","350z_kiwi","350z_black","350z_silver","350z_green","350z_blue","350z_gold","350z_white","350z_pink","350z_mod","350z_ruben","350z_v","350z_yellow"];
_sc8 = ["tcg_taurus_civ1","tcg_taurus_civ2","tcg_taurus_civ3","tcg_taurus_civ4","tcg_taurus_civ5","tcg_taurus_civ6","il_fordcv_white","il_fordcv_grey","il_fordcv_black","il_fordcv_darkblue","il_fordcv_maroon","il_fordcv_sandstone"];
_sc9 = ["m5_red","m5_grey","m5_blue","m5_c_green","m5_c_black","m5_c_white","BMW_M6","BMW_M3_GTR","BMW_M3","BMW_M3_RALLY","BMW_135I","tcg_bmw_m3","tcg_bmw_m3_hamwhite","tcg_bmw_m3_c1","tcg_bmw_m3_c3","tcg_bmw_m3_c4","tcg_bmw_m3_c5","tcg_bmw_m3_c6","tcg_bmw_m3_c7","tcg_bmw_m3_c8","tcg_bmw_m3_c9"];
//Tahoe shop
_tahoe = ["tahoe_grey","tahoe_darkblue","tahoe_blue","tahoe_yellow","tahoe_white","tahoe_green","tahoe_black","tahoe_orange","tahoe_pink","tahoe_darkblue_cb","tahoe_grey_cb","tahoe_blue_cb","tahoe_yellow_cb","tahoe_pink_cb","tahoe_white_cb","tahoe_green_cb","tahoe_black_cb","tahoe_orange_cb"];
//Pickup Shop - 
_ps = ["il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","tcg_suburban_red","tcg_suburban_yellow","tcg_suburban_grey","tcg_suburban_white","tcg_suburban_green","suburban_blue","suburban_black","suburban_maroon","suburban_sandstone","suburban_grey","suburban_white","f350_red","f350_blue","f350_pink","f350_white","f350_black"];
//taxi shop
_tx = ["GLT_M300_LT","GLT_M300_ST","il_fordcv_taxi","tcg_taurus_taxi"];
//motorcycle shop
_mbs = ["tcg_hrly","tcg_hrly_coco","tcg_hrly_demon","tcg_hrly_limited","tcg_hrly_orig1","tcg_hrly_gay","tcg_hrly_metal","tcg_hrly_orig2","tcg_hrly_white","tcg_hrly_blue","tcg_hrly_red","Old_moto_TK_Civ_EP1","TT650_TK_CIV_EP1","TT650_Ins","TT650_Civ","ATV_CZ_EP1"];
_qbs = ["cl_quaddescammo","cl_green","cl_quadred","cl_quadsaftysteel","cl_quadyellow","cl_blue2","cl_chark","cl_dirtyred"];
_qbss = ["tcg_aprilia_blue","tcg_aprilia_yellow","tcg_aprilia_white","tcg_aprilia_green","tcg_aprilia_red","tcg_aprilia_black","tcg_aprilia_black_2","tcg_aprilia_blue_2","tcg_aprilia_blue_4","tcg_aprilia_blue_5","tcg_aprilia_cyan","tcg_aprilia_green_3","tcg_aprilia_orange","tcg_aprilia_red_1","tcg_aprilia_red_2","tcg_aprilia_white_2","tcg_aprilia_yellow_2"];
//Truck Shop
_ts = ["cl_del_mackr","cl_trucktest_mackr","cl_flatbed_mackr","Ural_TK_CIV_EP1","V3S_Open_TK_CIV_EP1","V3S_TK_EP1","UralOpen_CDF","KamazOpen","Ural_CDF","schoolbus","Ikarus_TK_CIV_EP1","Ikarus"];
_ukpts = ["cl_del_mackr"];
//Sport Truck Shops
_sts = [
"raptor_black",
"raptor_grey",
"raptor_blue",
"raptor_yellow",
"raptor_pink",
"raptor_white",
"raptor_green",
"raptor_red",
"raptor_orange",
"Cherokee_black",
"Cherokee_grey",
"Cherokee_blue",
"Cherokee_yellow",
"Cherokee_pink",
"Cherokee_white",
"Cherokee_green",
"Cherokee_red",
"Cherokee_orange",
"rangerover_black",
"rangerover_blue",
"rangerover_yellow",
"rangerover_pink",
"rangerover_white", 
"rangerover_green",
"rangerover_red",
"rangerover_orange",
"rangeroverc_black",
"rangeroverc_white",
"rangeroverc_grey",
"rangeroverc_red",
"s331_black",
"s331_grey",
"s331_blue",
"s331_yellow",
"s331_pink",
"s331_white",
"s331_green",
"s331_red",
"s331_orange",
"s331c_black",
"s331c_white",
"s331c_red",
"s331c_grey",
"h1_black",
"h1_grey",
"h1_blue",
"h1_yellow",
"h1_pink",
"h1_white",
"h1_green",
"h1_red",
"h1_orange",
"h1c_black",
"h1c_red",
"h1c_white",
"h1c_grey"
];
//Air Shop
_as = ["An2_1_TK_CIV_EP1","An2_2_TK_CIV_EP1","USEC_MAULE_M7_STD","gnt_piperwii","GNT_C185F","GNT_C185E","GNT_C185R","GNT_C185C","GNT_C185"];
_assa = ["kyo_ultralight","AH6X_EP1","KA137_PMC","CSJ_Gyroc","Mi17_Civilian","bd5j_civil_3","bd5j_civil_2","bd5j","GazelleUN","GazelleD","Gazelle","Gazelle3","adf_as350","ibr_as350_specops","ibr_as350_jungle","tcg_bell206_3","tcg_bell206_4","tcg_bell206_1","tcg_bell206_2","tcg_bell206_5","tcg_bell206", "MH6J_EP1"];
_asc = ["can_c130","airnz_C130","luf_c130","qantas_C130","A320MPA"];
//Scuba Shop
_sb = ["fishingpole","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3"];
//Boat Shop
_bs = ["fishingpole","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3","cl_trawler_fishing_boat","cl_sport_fishing_boat","Fishing_boat","cl_inflatable","PBX","Zodiac","Smallboat_1","Smallboat_2","lcu","big_boat"];
_ukpbs = ["PBX","cl_container_boat"];
_bsp = ["fishingpole","GNT_C185F","GNT_C185E","PBX","Zodiac","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3"];
//cop boat shop
_cb = ["fishingpole","JFH_USCG_ZODIAC","JFH_USCG_RHIB","cl_inflatable","tcg_wrun"];
//Terror Boat Shop
_bt = ["fishingpole","PBX", "Zodiac","cl_trawler_fishing_boat","cl_sport_fishing_boat","Fishing_boat","cl_inflatable","RHIB","lcu","JMSDF_US2","JMSDF_US1"];
//Jewelry shop
_js = ["Diamond"];
//insurance
_ins = ["bankversicherung"];
//Doctor
_td = ["firetruck","rescue","Laddertruck","suburban_fd","il_silverado_pd","tcg_suburban_FD","il_ambulance","il_f350_brush","gmc_ambulance","ibr_as350","roadcone","roadbarrierlong","roadbarriersmall","bjerk"];
//Resource Shop
_rs = ["gold","iron","copper","diamond rock"];
//Jackos Cheesburgers
_gds = ["bread","straw"];
_gds1 = ["reparaturkit","bjerk"];
_gds3 = ["roadblock","glt_roadsign_octagon","bargate","SearchLight_UN_EP1","roadcone","bunkersmall","FlagCarrierUSA","FlagCarrierRU","FlagCarrierTakistanKingdom_EP1","FlagCarrierCzechRepublic_EP1","FlagCarrierGermany_EP1","FlagCarrierBAF"];
//Oil Trader/Seller
_os = ["Oil","OilBarrel"];
//ukp sell processed
_ukp = ["OilBarrel","Oil"];
//Whale Sale
_ws = ["Whale"];
//Cocaine Sell
_dsc = ["cocaine","cocaineseed"];
//Marijuana Sell
_dsm = ["marijuana","marijuanaseed"];
//LSD Sell
_dsl = ["lsd"];
//Heroin Sell
_dsh = ["heroin","heroinseed"];
_psc = ["medikit","pharm","GymMem1","GymMem2","cl_wheelchair"];
_msc = ["meth","GymMem3","GymMem4"];
//Cop Air Shop
//Littlebird Unarmed, Huey
_ca = ["MH6J_EP1","HH65C","tcg_police_bell206"];
//Cop Vehicle Shop
_cv = ["MMT_USMC","M1030_US_DES_EP1","cl_quadcarbonlight","ilpd_beat_f101","ilpd_slick_b40_npb","ilpd_slick_b40_PBG","ilpd_slick_b40_pb","il_charger_pd","ilpd_charger_white","tcg_taurus_pb_2","tcg_taurus","tcg_taurus_wopb","suburban_pd","tahoe_pd","vil_lublin_AMBU","jailbus","tahoe_supervisor"];
_cv1 =["MMT_USMC","cl_quadcarbonlight","M1030_US_DES_EP1","tcg_hrlycop","ilpd_beat_f101_sh","pd_cvpi","pd_cvpi_hub","ilpd_slick_f220_npb","ilpd_slick_f220_PBG","tcg_taurus_shpb","tcg_taurus_sh","suburban_pd_sheriff","tahoe_sh","il_f350sheriff","RH_M16a1","20Rnd_556x45_Stanag","RH_m14","20Rnd_762x51_DMR"];

_copshop = 

[
"DDOPP_X3",
"DDOPP_3Rnd_X3",
"DDOPP_X26",
"DDOPP_1Rnd_X26",
"M1014",
"tcg_mossberg",
"tcg_remington",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"Itembag",
"Donut",
"medikit", 
"handy", 
"Binocular",
"Itembag",
"lockpick",
"spikestrip",
"supgrade1",
"supgrade2",
"supgrade3",
"supgrade4",
"reparaturkit",
"NVGoggles"
];

_copshop_patrol = 

[
"RAB_L111A1",
"SmokeShell",
"RH_g17",
"RH_g18",
"RH_33Rnd_9x19_g18",
"RH_g19",
"RH_19Rnd_9x19_g18",
"RH_p226",
"RH_m9",
"Rnd_9x19_M9",
"RH_usp",
"RH_15Rnd_9x19_usp",
"RH_m1911",
"RH_m1911old",
"RH_8Rnd_45cal_m1911",
"RH_m4",
"RH_hk416",
"20Rnd_556x45_Stanag",
"M32_EP1",
"6Rnd_Smoke_M203"
];

_copshop_sobr = 

[
"DDOPP_X3_b",
"DDOPP_3Rnd_X3",
"DDOPP_X26_b",
"DDOPP_1Rnd_X26",
"RAB_L111A1",
"SmokeShell",
"SWAT",
"batter",
"Land_ladder_half",

"MP5A5",
"RH_mp5a4eot",
"30rnd_9x19_MP5",

"RH_ump",
"RH_45ACP_25RND_Mag",

"M14_EP1",
"KPFS_G3A3",
"swat20Rnd_762x51_DMR",

"BAF_LRR_scoped_W",
"5Rnd_86x70_L115A1",

"M24",
"5Rnd_762x51_M24",

"RH_m16a2aim",
"RH_M4sdeotech",
"RH_M4glaim",
"RH_M4gleotech",
"RH_acrb",
"RH_hk416aim",
"RH_mk12mod1",
"swat30Rnd_556x45_Stanag",
"1Rnd_Smoke_M203",

"Stinger",
"Stinger_mag"
];

_swatcarshop =

[
"ilpd_scu_black",
"ilpd_scu_grey",
"ilpd_scu_maroon",
"ilpd_charger_black",
"suburban_pd_black",
"tcg_suburban_uc_black",
"tcg_suburban_uc_white",
"tcg_suburban_uc_grey",
"tahoe_uc_black",
"tahoe_uc_white",
"ilf350swat",
"suburban_swat",
"il_bearcat"
];

_trafficshop =

[
"roadblock",
"glt_roadsign_octagon",
"bargate",
"SearchLight_UN_EP1",
"roadcone",
"bunkersmall",
"il_barrier"
];

_trafficcars =

[
"ilpd_traffic_t101",
"ilpd_Traffic_black",
"ilpd_Traffic_white",
"tcg_suburban_patrol",
"suburban_pd_stealth"
];

_vicecars =

[
"MMT_USMC",
"cl_quadcarbonlight",
"Volha_1_TK_CIV_EP1",
"Volha_2_TK_CIV_EP1",
"Car_hatchback",
"LandRover_TK_CIV_EP1",
"civic",
"il_fordcv_taxi",
"tcg_taurus_taxi",
"tcg_taurus_uc",
"tahoe_uc_1_black",
"tahoe_uc_1_grey",
"tahoe_uc_1_blue",
"tahoe_uc_1_green",
"tahoe_uc_1_white",
"tahoe_uc_1_maroon",
"ilpd_unmarked_black",
"ilpd_unmarked_sandstone",
"ilpd_unmarked_maroon",
"ilpd_unmarked_darkblue",
"ilpd_unmarked_grey",
"m5_pd_traffic"
];

_k9cars =

[
"suburban_pd_k9",
"m5_pd_traffic"
];

_terrorshop = 

[ 
"NVGoggles",
"RH_oc14",
"RH_kriss",
"RH_krissaim",
"RH_ar10",
"RH_ar10s",
"RH_rk95",
"RH_aks47",
"RH_aks47b",
"AK_47_S",
"AA12_PMC",
"RH_akm",
"M14_EP1",
"20Rnd_762x51_DMR",
"RH_ctar21",
"RH_hk416sd",
"RH_hk417",
"RH_20Rnd_762x51_hk417",
"RH_M16a1",
"RH_45ACP_30RND_Mag",
"RH_20Rnd_762x51_AR10",
"30Rnd_762x39_AK47",
"RH_30Rnd_762x39_SDmag",
"RH_20Rnd_9x39_SP6_mag",
"20Rnd_B_AA12_Pellets",
"30Rnd_556x45_Stanag"
];

_shady =

[
"lockpick",
"ziptie"
];

_gangshop_buy = 

[
"lockpick",
"ziptie",
"burgl",

"Fuelline", 
"medikit",
"Binocular", 
"NVGoggles",
"RH_ppk",
"RH_7Rnd_32cal_ppk",
"RH_mk2",
"RH_10Rnd_22LR_mk2",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_vz61",
"RH_20Rnd_32cal_vz61",
"RH_tec9",
"RH_30Rnd_9x19_tec",
"tcg_combat",
"8Rnd_B_Beneli_Pellets",
"KPFS_PM63",
"KPFS_25Rnd_pm",
"supgrade1"
];

_gangshop_buy2 = 

[
"lockpick",
"ziptie",
"burgl",
"Fuelline", 
"medikit",
"Binocular", 
"NVGoggles",
"RH_ppk",
"RH_7Rnd_32cal_ppk",
"RH_mk2",
"RH_10Rnd_22LR_mk2",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_vz61",
"RH_20Rnd_32cal_vz61",
"RH_tec9",
"RH_30Rnd_9x19_tec",
"tcg_combat",
"8Rnd_B_Beneli_Pellets",
"KPFS_PM63",
"KPFS_25Rnd_pm",
"supgrade1"
];

_gangshop_buy3 = 

[
"lockpick",
"ziptie",
"burgl",
"Fuelline", 
"medikit",
"Binocular", 
"NVGoggles",
"RH_ppk",
"RH_7Rnd_32cal_ppk",
"RH_mk2",
"RH_10Rnd_22LR_mk2",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_vz61",
"RH_20Rnd_32cal_vz61",
"RH_tec9",
"RH_30Rnd_9x19_tec",
"tcg_combat",
"8Rnd_B_Beneli_Pellets",
"KPFS_PM63",
"KPFS_25Rnd_pm",
"supgrade1"
];

_gangshop_buy4 = 

[
"lockpick",
"ziptie",
"burgl",
"lighter",
"Fuelline", 
"medikit",
"Binocular", 
"NVGoggles",
"RH_ppk",
"RH_7Rnd_32cal_ppk",
"RH_mk2",
"RH_10Rnd_22LR_mk2",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_vz61",
"RH_20Rnd_32cal_vz61",
"RH_tec9",
"RH_30Rnd_9x19_tec",
"tcg_combat",
"8Rnd_B_Beneli_Pellets",
"KPFS_PM63",
"KPFS_25Rnd_pm"
];


_copshop3 = ["DDOPP_3Rnd_X3","DDOPP_X26_b","DDOPP_1Rnd_X26","tcg_combat","8Rnd_B_Beneli_74Slug","8Rnd_B_Beneli_Pellets","Donut","medikit","spikestrip","lockpick","Fuelline","reparaturkit","handy","supgrade1","supgrade2","supgrade3","supgrade4","supgrade5","Itembag","NVGoggles","RH_python","RH_6Rnd_357_Mag","RH_ak47","Rnd_762x39_AK47","RH_m4maim","RH_m4macog","RH_m14","RH_m14aim","RH_m14acog","RH_m14eot","cop30Rnd_556x45_Stanag","cop20Rnd_762x51_DMR","SmokeShell","DDOPP_X3_b"];

_t1shoplist = [
"medikit",
"reparaturkit",
"isupgrade1",
"isupgrade2",
"isupgrade3",
"T1_RH_Rk95ag",
"30Rnd_762x39_AK47",
"T1_RH_krisseot",
"RH_45ACP_30RND_Mag"
];

_t2shoplist =[
"medikit",
"reparaturkit",
"isupgrade1",
"isupgrade2",
"isupgrade3",
"isupgrade4",
"T1_RH_Rk95ag",
"30Rnd_762x39_AK47",
"T1_RH_krisseot",
"RH_45ACP_30RND_Mag",
"T2_RH_mp7aim",
"RH_46x30mm_40RND_Mag",
"T2_RH_m4macog",
"30Rnd_556x45_Stanag",
"T2_RH_an94",
"30Rnd_545x39_AK",
"T2_KPFS_TT33",
"KPFS_8Rnd_762x25_TT33"
];

_t3shoplist = [
"medikit",
"reparaturkit",
"isupgrade1",
"isupgrade2",
"isupgrade3",
"isupgrade4",
"isupgrade5",
"T1_RH_Rk95ag",
"30Rnd_762x39_AK47",
"T1_RH_krisseot",
"RH_45ACP_30RND_Mag",
"T2_RH_mp7aim",
"RH_46x30mm_40RND_Mag",
"T2_RH_m4macog",
"30Rnd_556x45_Stanag",
"T2_RH_an94",
"30Rnd_545x39_AK",
"T2_KPFS_TT33",
"KPFS_8Rnd_762x25_TT33",
"T3_RH_rpk47",
"RH_75Rnd_762x39_mag",
"T3_RH_ar10s",
"RH_20Rnd_762x51_AR10",
"T3_RH_P90",
"RH_57x28mm_50RND_Mag"
];

_txshoplist = [
"medikit",
"reparaturkit",
"isupgrade1",
"isupgrade2",
"isupgrade3",
"isupgrade4",
"isupgrade5",
"T1_RH_Rk95ag",
"TX_RH_aks47g",
"30Rnd_762x39_AK47",
"T1_RH_krisseot",
"RH_45ACP_30RND_Mag",
"T2_RH_mp7aim",
"RH_46x30mm_40RND_Mag",
"T2_RH_m4macog",
"30Rnd_556x45_Stanag",
"T2_RH_an94",
"30Rnd_545x39_AK",
"T2_KPFS_TT33",
"KPFS_8Rnd_762x25_TT33",
"T3_RH_rpk47",
"RH_75Rnd_762x39_mag",
"T3_RH_ar10s",
"RH_20Rnd_762x51_AR10",
"T3_RH_P90",
"RH_57x28mm_50RND_Mag",
"TX_RH_SVDg",
"10Rnd_762x54_SVD",
"TX_RH_M249acog",
"200Rnd_556x45_M249"
];

_topshotz =
[
"SCAR_H_CQC_CCO_SD_top",
"20Rnd_762x51_SB_SCAR",
"KSVK_top",
"5Rnd_127x108_KSVK",
"RH_m4maim_top",
"RH_HK53aim_top",
"G36a_top",
"RH_mk12mod1sd_top",
"30Rnd_556x45_Stanag",
"100Rnd_556x45_BetaCMag_top",
"RH_umpaim_top",
"RH_45ACP_25RND_Mag",
"RH_mp5kp_top",
"30Rnd_9x19_MP5p",
"RH_Mk48mod1acog_top",
"100Rnd_762x51_M240",
"rpg7v_top",
"PG7V",
"HandGrenade_West_top",
"h1c_red",
"il_charger_red",
"MV22",
"Donut",
"medikit",
"reparaturkit",
"supgrade1",
"supgrade2"
];

_pirategearshop =[
"fishgun",
"boatammo",
"big_boat",
"smallboat_1",
"smallboat_2",
"tcg_wave_red"
];

_IRAvehicles =
[
"cl_fuel_mackr",
"240GD"
];


_IRAweapons = 

[
"IRAfal",
"IRAar15",
"IRAm16",
"IRAak47",
"IRAlee",
"IRAHuntingRifle",
"IRAG3A2",
"IRAMP2",
"30Rnd_556x45_Stanag",
"30Rnd_762x39_AK47",
"20Rnd_762x51_FNFAL",
"20Rnd_762x51_DMR",
"30Rnd_9x19_UZI",
"x_303",
"5Rnd_762x51_M24",
"BAF_ied_v4"

];

_xwepshop = 

[ 
"dKPFS_MP44",
"dRH_acrglacog",
"dRH_acraim",
"dRH_acrglaim",
"dRH_acrgl",
"dRH_acreotech",
"dRH_acrgleotech",
"dRH_acr",
"dRH_ctar21",
"dRH_ctar21glacog",
"dRH_ctar21m",
"dRH_ctar21mgl",
"dRH_P90",
"dRH_P90aim",
"dRH_P90eot",
"dRH_P90i",
"dRH_P90sd",
"dRH_p90sdaim",
"dRH_p90sdeot",
"dRH_p90isd",
"dG36_C_SD_eotech",
"dRH_HK53",
"dRH_HK53aim",
"dRH_HK53eot",
"dRH_HK53RFX",
"dRH_mp5a4",
"dKPFS_MP5A3",
"dRH_mp5a4aim",
"dRH_mp5a4eot",
"dRH_mp5a4RFX",
"dRH_mp5a5",
"dRH_mp5a5aim",
"dRH_mp5a5eodaim",
"dRH_mp5a5eodeot",
"dRH_mp5a5eodRFX",
"dRH_mp5a5eot",
"dRH_mp5a5eod",
"dRH_mp5a5RFX",
"dRHmp5a5ris",
"dRH_mp5a5risaim",
"dRH_mp5a5riseot",
"dRH_mp5a5risRFX",
"dRH_mp5k",
"dRH_mp5kpdw",
"dRH_mp5kpdwaim",
"dRH_mp5kpdweot",
"dRH_mp5kpdwRFX",
"dRH_mp5sd6",
"dRH_mp5sd6aim",
"dRH_mp5sd6g",
"dRH_mp5sd6eot",
"dRH_mp5sd6RFX",
"dRH_mp7",
"dRH_mp7aim",
"dRH_mp7eot",
"dRH_mp7sd",
"dRH_mp7sdaim",
"dRH_mp7sdeot",
"dRH_UMP",
"dRH_umpaim",
"dRH_umpeot",
"dRH_umpRFX",
"dRH_umpsd",
"dRH_umpsdaim",
"dRH_umpsdeot",
"dRH_umpsdRFX",
"dRH_hk416",
"dRH_hk416glacog",
"dRH_hk416gl",
"dRH_hk416aim",
"dRH_hk416glaim",
"dRH_hk416s",
"dRH_hk416sglacog",
"dRH_hk416saim",
"dRH_hk416sglaim",
"dRH_hk416seotech",
"dRH_hk416sgleotech",
"dRH_hk416sgl",
"dRH_hk416eotech",
"dRH_hk416gleotech",
"dRH_hk416sd",
"dRH_hk416sdgl",
"dRH_416sdaim",
"dRH_416sdglaim",
"dRH_hk416sdeotech",
"dRH_hk417",
"dRH_hk417aim",
"dRH_hk417s",
"dRH_hk417saim",
"dRH_hk417seotech",
"dRH_hk417eotech",
"dRH_hk417sd",
"dRH_hk417sdaim",
"dRH_hk417sdeotech",
"dRH_hk417sglacog",
"dRH_hk417sgl",
"dhk417sglaim",
"dRH_hk417sglaim",
"dRH_hk417sgleotech",
"dRH_M4aim",
"dRH_m4eotech",
"dRH_M4gl",
"dRH_M4glaim",
"dRH_m4gleotech",
"dRH_M4a1aim",
"dM4A1_HWS_GL_SD_Camo",
"dRH_M4sdgl",
"dRH_m4sdglaim",
"dRH_m4sdgleotech",
"dRH_M4m",
"dRH_M4maim",
"dRH_M4meotech",
"dRH_m4sd",
"dRH_M4sdaim",
"dRH_M4sdaimwdl",
"dRH_M4sdeotech",
"dRH_masaim",
"dRH_maseotech",
"dMP5SD",
"dRH_rk95aim",
"dRH_rk95sd",
"dRH_Rk95sdaim",
"dRH_Rk95sdaim",
"dRH_kriss",
"dRH_krissaim",
"dRH_krisseot",
"dRH_krissRFX",
"dRH_krisssd",
"dRH_krisssdaim",
"dRH_krissdeot",
"dRH_krissedRFX",
"dRH_uzig",
"dRH_uzisd",
"dM249",
"dRH_M249pelcan",
"dRH_m249",
"dM249_EP1",
"dKPFS_MG1",
"dRH_Mk48mod1",
"dRH_Mk48mod1acog",
"dKPFS_G3SG1",
"dKPFS_MP5A3SD",
"dKPFS_HK416_Aim",
"dRH_hk416acog",
"dRH_hk416sacog",
"dRH_hk417acog",
"dRH_hk417sacog",
"dRH_hk417sdacog",
"dRH_hk417sdsp",
"dRH_hk417sp",
"dBAF_LRR_scoped",
"dRH_m4macog",
"dRH_m4sbracog",
"dRH_m4sdacog",
"dm8_holo_sd",
"dRH_MK12",
"dRH_MK12sd",
"dRH_MK12mod1",
"dRH_MK12mod1sd",
"dM4SPR",
"dRH_star21",
"dRH_m93r",
"dRH_m9",
"dRH_m9sd",
"dRH_anacg",
"dRH_python",
"dRH_Deagle",
"dRH_Deagleg",
"dRH_Deaglem",
"dRH_deaglemzb",
"dRH_Deaglemz",
"dKPFS_HKP30",
"dKPFS_P8",
"dRH_m1911",
"dRH_m1911sd",
"dM9SD",
"dKPFS_Makarov",
"dRH_pmsd",
"dRH_mk22vsd",
"dC1987_P99_silver_sd",
"dC1987_P99_black_laser_sd",
"dRH_mk2",
"dRH_apssd",
"dRH_bull",
"dRH_usp",
"dRH_uspsd"
];

_xammoshop = 

[ 
"KPFS_30rnd_762x43_STG44",
"30Rnd_556x45_Stanag",
"30Rnd_556x45_G36SD",
"RH_45ACP_25RND_Mag",
"30rnd_9x19_MP5",
"30Rnd_545x39_AK",
"RH_57x28mm_50RND_Mag",
"RH_57x28mm_50RND_SD_Mag",
"5Rnd_127x108_KSVK",
"20Rnd_762x51_DMR",
"100Rnd_762x54_PK",
"75Rnd_545x39_RPK",
"20Rnd_762x51_FNFAL",
"200Rnd_556x45_L110A1",
"20Rnd_556x45_Stanag",
"100Rnd_127x99_M2",
"5Rnd_86x70_L115A1",
"100Rnd_762x51_M240",
"KPFS_10Rnd_762x39_SKS",
"KPFS_25Rnd_pm",
"KPFS_32Rnd_MP2",
"RH_6rnd_44_Mag",
"RH_7Rnd_50_AE",
"15Rnd_9x19_M9SD",
"RH_17Rnd_9x19_g17SD",
"RH_8Rnd_9x19_Mksd",
"RH_9mm_32RND_SD_Mag",
"1Rnd_HE_M203",
"1Rnd_HE_GP25",
"FlareWhite_M203",
"FlareWhite_GP25",
"FlareYellow_GP25",
"FlareRed_M203",
"SmokeShellGreen",
"SmokeShell"
];

_IRAhelicopters =
[
"Gazelle1"
];

_vipterrorshop = 

[ 
"NVGoggles",
//"RH_AK107k",
"dRH_ak105glsp",
"dRH_ak103",
"dRH_ak103k",
"dRH_ak47",
"dAK_74_GL_kobra",
"dRH_akmssd",
"dRH_aks74usd",
"dRH_aks74u",
"dRH_an94gl",
"dRH_asval",
"dRH_asvalk",
"dRH_bizonk",
"dRH_bizon",
"dRH_bizonsd",
"dKPFS_MP2",
"dRH_m14",
"dRH_m14eot",
"dRH_M16a1",
"dRH_m16a1gl",
"dM16A2",
"dRPK_74",
"dRH_rpk47",
"dKPFS_KarS",
"dPK",
"dPecheneg",
"dksvk",
"dRH_Mk2",
"dRH_mk22sd",
"dRH_mk22",
"dRH_Deagleg",
"dKPFS_PSL",
"dRH_SVU",
"dRH_oc14",
"dRH_kriss",
"dRH_krissaim",
"dRH_ar10",
"dRH_ar10s",
"dRH_rk95",
"dRH_aks47",
"dRH_aks47b",
"dAK_47_S",
"dRH_akm",
"dM14_EP1",
"ddRH_ctar21"
];

_vipterrorshopammo = 

[ 
//"B_9x18_SD",
//"B_9x18_Ball",
"64rnd_9x19_bizon",
"20rnd_762x51_DMR",
"75rnd_545x39_RPK",
"RH_75rnd_762x39_mag",
"KPFS_10rnd_762x39_SKS",
"100rnd_762x54_PK",
"5Rnd_127x108_KSVK",
"Rnd_B_765x17_Ball",
"RH_10Rnd_22LR_mk2",
"RH_8rnd_9x19_mk",
"RH_7Rnd_50_AE",
"KPFS_10rnd_PSL",
"10Rnd_762x54_SVD",
"20Rnd_9x39_SP5_VSS",
"RH_20Rnd_762x51_hk417",
"RH_45ACP_30RND_Mag",
"RH_20Rnd_762x51_AR10",
"30Rnd_762x39_AK47",
"RH_30Rnd_762x39_SDmag",
"RH_20Rnd_9x39_SP6_mag",
"20Rnd_B_AA12_Pellets",
"30Rnd_556x45_Stanag",
"100Rnd_556x45_BetaCMag",
"PG7V",
"1Rnd_HE_M203",
"1Rnd_HE_GP25",
"FlareWhite_M203",
"FlareWhite_GP25",
"FlareYellow_GP25",
"FlareRed_M203"
];

_vipterroristvehicles = 

[ 
"Pickup_PK_INS",
"GAZ_Vodnik",
"UH1H_TK_GUE_EP1"
];

_fbiwep = 

[ 
"FBI_RH_M1911",
"FBI_KPFS_P226",
"FBI_RH_HK53RFX",
"FBI_RH_MP5A5RISRFX",
"RH_8rnd_45cal_M1911",
"KPFS_15rnd_9x19",
"30Rnd_556x45_Stanag",
"30Rnd_9x19_MP5"
];

_fbivehicles =

[
"ilpd_Traffic_black",
"il_fordcv_taxi",
"tcg_taurus_uc",
"tcg_suburban_uc_black"
];

INV_ItemShops = [

[fuelshop1,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop2,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop3,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop4,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop5,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop6,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop7,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop8,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop9,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[vending2,"Outdoor Shop",vending2,dummyobj,_fs2,_fs2,true],
[shop1,"Food Shop",dummyobj,dummyobj,_is,_is,true],
[shop2,"Food Shop",dummyobj,dummyobj,_is,_is,true],
[shop4,"Food Shop",dummyobj,dummyobj,_is,_is,true],
[bailflag,"Food and Gun Locker",dummyobj,dummyobj,_cf,_cf,true],
[pub1,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[pub2,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[pub3,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[pub4,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[gundealer1,"Firearms Dealer",gunbox2,dummyobj,_gss,_gss,true],
[assassinshop,"Assassin Shop",assassinshop,dummyobj,_ass,_ass,true],
[mayorguns,"Government Equip Shop",mayorguns,mayorcarspawn,_mgs,_mgs,true],
[equipbox,"Equipment & Mining Tools",equipbox,dummyobj,_es,_es,true],
[gocartshop,"Texas Go-Carts Shop",dummyobj,gocartspawn,_gc,_gc,true],
[tuning1,"Car Upgrades",dummyobj,dummyobj,_cu,_cu,true],
[carshop1,"Used Cars",dummyobj,carspawn1,_cs1,_cs1,true],
[carshop2,"Farm Equipment",dummyobj,carspawn2,_cs2,_cs2,false],
[scarshop,"Muscle Car Shop",dummyobj,scarspawn1,_sc1,_sc1,true],
[scarshop2,"Charger and Mazda",dummyobj,scarspawn2,_sc2,_sc2,true],
[scarshop3,"Low End Sports",dummyobj,scarspawn3,_sc3,_sc3,true],
[scarshop4,"Mid Level Sports",dummyobj,scarspawn4,_sc4,_sc4,true],
[scarshop5,"High End Sports",dummyobj,scarspawn5,_sc5,_sc5,true],
[scarshop6,"Nissan Car Shop",dummyobj,scarspawn6,_sc6,_sc6,true],
[scarshop7,"350z Car Shop",dummyobj,scarspawn7,_sc7,_sc7,true],
[scarshop8,"Ford Car Shop",dummyobj,scarspawn8,_sc8,_sc8,true],
[scarshop9,"BMW Car Shop",dummyobj,scarspawn9,_sc9,_sc9,true],
[tahoeshop1,"Tahoe Shop",dummyobj,tahoespawn1,_tahoe,_tahoe,true],
[pickupshop1,"Pickup Shop",dummyobj,pickupspawn1,_ps,_ps,true],
[taxishop,"Taxi Shop",dummyobj,taxispawn1,_tx,_tx,true],
[bikeshop,"Mikes Bike Shop",dummyobj,bikespawn,_mbs,_mbs,true], 
[bikeshop1,"Quad Bike Shop",dummyobj,bikespawn1,_qbs,_qbs,true],
[bikeshop2,"Sports Bike Shop",dummyobj,bikespawn1,_qbss,_qbss,true],
[truckshop,"Truck and Bus Shop",dummyobj,truckspawn,_ts,_ts,true],
[ukptshop,"Truck Shop",dummyobj,ukptspawn,_ukpts,_ukpts,true],
[struckshop,"Sport Truck Shop",dummyobj,struckspawn,_sts,_sts,true],
[airshop,"Airplane Shop",dummyobj,asairspawn,_as,_as,true],
[airshop2,"Chopper and Jet Shop",dummyobj,asairspawn,_assa,_assa,true],
[airshop3,"Commercial Air Shop",dummyobj,asairspawn,_asc,_asc,true],
[airshop4,"Chopper and Jet Shop",dummyobj,asairspawn2,_assa,_assa,true],
[scubashop, "Jetski Shop",dummyobj,boatspawn5,_sb,_sb,true],	
[boatshop1, "Boat Shop",dummyobj,boatspawn1,_bs,_bs,true],
[boatshop2, "Boat Shop",dummyobj,boatspawn2,_bs,_bs,true],
[boatshop3, "Boat Shop",dummyobj,boatspawn3,_bs,_bs,false],
[ukpbshop, "Boat Shop",dummyobj,ukpbspawn,_ukpbs,_ukpbs,true],
[boatshop4, "Sea Plane Shop",dummyobj,boatspawn4,_bsp,_bsp,false],
[copboatshop, "Coast Guard Boat Shop",dummyobj,copboatspawn,_cb,_cb,true],
[tboatshop1,"Boat Shop",dummyobj,tboatspawn1,_bt,_bt,true],
[Diamond_1,"Bryces Pretty Jewelry Shop",dummyobj,dummyobj,_js,_js,true],
[mainbank,"Insurance",mainbank,dummyobj,_ins, _emptyshop,false],
[tdoc,"Fire Rescue Equipment",dummyobj,tdocspawn,_td,_td,true],
[resourcesell,"Sell Resources",dummyobj,dummyobj,_rs,_rs,true],
[cheeseburger,"Jackos Cheeseburgers",dummyobj,dummyobj,_gds,_gds,true],
[workplace_getjobflag_4,"BG Emporium",dummyobj,dummyobj,_gds1,_gds1,true],
[workplace_getjobflag_6,"Wigworths",dummyobj,dummyobj,_gds3,_gds3,true],
[OilSell1,"Oil Dealer", dummyobj,dummyobj, _emptyshop,_os,true],
[OilSell2,"Exports", dummyobj,dummyobj, _emptyshop,_ukp,true],
[whalesell,"Sell Whale",dummyobj,dummyobj,_emptyshop,_ws,true],	
[terrorbox,"Terror Stuff",terrorbox,dummyobj, _terrorshop,_terrorshop,true],
[shadyd,"Barely Legal",shadyd,dummyobj, _shady,_shady,true],
[gangarea1,"Gang Shop",gangbox1,dummyobj,_gangshop_buy,_gangshop_buy,false],
[gangarea2,"Gang Shop",gangbox2,dummyobj,_gangshop_buy2,_gangshop_buy2,false],
[gangarea3,"Gang Shop",gangbox3,dummyobj,_gangshop_buy3,_gangshop_buy3,false],
[gangarea4,"Gang Shop",gangbox4,dummyobj,_gangshop_buy4,_gangshop_buy4,false],																	
[cdrugsell,"Sell Cocaine",dummyobj,dummyobj,_dsc,_dsc,true],
[mdrugsell,"Sell marijuana",dummyobj,dummyobj,_dsm,_dsm,true],
[ldrugsell,"Sell LSD",dummyobj,dummyobj,_emptyshop,_dsl,true],
[hdrugsell,"Sell Heroin",dummyobj,dummyobj,_dsh,_dsh,true],
[methsell,"Sell Meth",dummyobj,dummyobj,_msc,_msc,true],
[pharmacy,"Pharmacy",dummyobj,pharmspawn,_psc,_emptyshop,false],
[copair,"Police Aircraft",dummyobj, cairspawn,_ca,_ca,true],
[copcar,"Police vehicles",dummyobj, ccarspawn,_cv,_cv,true],
[copcar1,"Sheriff Vehicles and Rifles",copsheriff, ccarspawn1,_cv1,_cv1,true],
[copbasic,"Basic Police Gear",copbasic,dummyobj, _copshop,_copshop,false],
[coppatrol,"Patrol Officer Gear",coppatrol,dummyobj,_copshop_patrol,_copshop_patrol,true],
[copsheriff,"Sheriffs Department Gear",copsheriff,dummyobj, _copshop,_copshop,false],
[copswat,"SWAT Equipment",copswat,dummyobj,_copshop_sobr,_copshop_sobr,true],
[copbasic2,"BROKE Trained Cop Equipment",copbasic2,dummyobj, _copshop2,_copshop2,false],
[copswatcars,"SWAT Vehicles",dummyobj,ccarspawnswat,_swatcarshop,_swatcarshop,true],
[coptraffic,"Traffic Division Equipment",coptraffic,dummyobj,_trafficshop,_trafficshop,true],
[coptrafficcars,"Traffic Division Vehicles",dummyobj,ctrafficspawn,_trafficcars,_trafficcars,true],
[copvicecars,"Trained Cop Vehicles",dummyobj,ccarspawn2,_vicecars,_vicecars,true],
[copk9cars,"K9 Unit and APO Vehicles",dummyobj,ck9spawn,_k9cars,_k9cars,true],
[copbasic3,"Trained Cop Equipment",copbasic3,dummyobj, _copshop3,_copshop3,false],
[T1Shop,"Tier 1 Donator Shop",T1Shop,T1Spawn,_t1shoplist,_t1shoplist,true],
[T2Shop,"Tier 2 Donator Shop",T2Shop,T2Spawn,_t2shoplist,_t2shoplist,true],
[T3Shop,"Tier 3 Donator Shop",T3Shop,T3Spawn,_t3shoplist,_t3shoplist,true],
[topshotzshop,"Gang Weapon/Vehicle Shop",topshotzshop,topshotzspawn,_topshotz,_topshotz,true],
[pirategearbox,"Piracy Gear",pirategearbox,pirateboatspawn,_pirategearshop,_pirategearshop,true],
[IRAveh,"IRA Vehicles",dummyobj, IRAcarspawn,_IRAvehicles,_IRAvehicles,true],
[IRAwep,"IRA Weapons",IRAweaponbox,IRAweaponbox,_IRAweapons,_IRAweapons,true],
[tierxweapons,"Tier-X Weapon Shop",tierxweapons, dummyobj,_xwepshop,_xwepshop,true],
[tierxammo,"Tier-X Ammo Shop",tierxammo,dummyobj,_xammoshop,_xammoshop,true],
[IRAheli,"IRA Helicopters",dummyobj, irahelispawn,_IRAhelicopters,_IRAhelicopters,true],
[vipterrorbox,"VIP Terrorist Weapons",vipterrorbox,dummyobj, _vipterrorshop,_vipterrorshop,true],
[vipterrorboxammo,"VIP Terrorist Ammo",vipterrorboxammo,dummyobj, _vipterrorshopammo,_vipterrorshopammo,true],
[terrorvipvehicle,"VIP Terrorist Vehicles",dummyobj, terrorvipvehiclespawn,_vipterroristvehicles,_vipterroristvehicles,true],
[copfbi,"FBI Shop",copfbi,copfbi,_fbiwep,_fbiwep,true],
[copfbicars,"FBI Vehicles",dummyobj, ccarspawnfbi,_fbivehicles,_fbivehicles,true]
];
