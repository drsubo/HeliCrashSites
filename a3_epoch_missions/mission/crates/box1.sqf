_centerpos = getMarkerPos "Marker1";											//Heli will spawn randomly inside a radius set by _addis
_aadis = [10,50,100,200,300,400,650,750,850,950,1000] call BIS_fnc_selectRandom;//You can set higher by adding more numbers in ex. 1500,2000
_aadir = random 360;															//The Higher the number the larger the max radius the heli will spawn
_aapos = [(_centerpos select 0) + sin(_aadir)*_aadis,(_centerpos select 1) + cos(_aadir)*_aadis];
_box1 = createVehicle ["C_supplyCrate_F", _aapos, [], 0, "NONE"];
_veh1 = createVehicle ["Land_Wreck_Heli_Attack_02_F", _aapos, [], 0, "NONE"];
_fire = createVehicle ["test_EmptyObjectForFireBig", _aapos, [], 0, "NONE"];

//Change loot by adding or editing below 
//Make sure to use addWeaponCargoGlobal, addMagazineCargoGlobal, additemcargoGlobal and addbackpackcargoGlobal
//for appropriate item your trying to add.
clearWeaponCargoGlobal _box1;
clearItemCargoGlobal _box1;
clearBackpackCargoGlobal _box1;
clearMagazineCargoGlobal _box1;
_box1 addWeaponCargoGlobal ["LMG_Mk200_MRCO_F", 2];
_box1 addWeaponCargoGlobal ["arifle_MXM_RCO_pointer_snds_F", 2];
_box1 addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_Tracer", 4];
_box1 addMagazineCargoGlobal ["200Rnd_65x39_cased_Box_Tracer", 4];
_box1 additemcargoGlobal ["NVG_EPOCH", 2];
_box1 additemcargoGlobal ["Rangefinder", 2];
_box1 additemcargoGlobal ["FirstAidKit", 3];
_box1 additemcargoGlobal ["optic_Arco", 1];
_box1 additemcargoGlobal ["ItemKiloHemp", 3];
_box1 additemcargoGlobal ["ItemRuby", 1];
_box1 additemcargoGlobal ["Pelt_EPOCH", 4];
_box1 additemcargoGlobal ["meatballs_epoch", 2];
_box1 additemcargoGlobal ["HeatPack", 3];
_box1 additemcargoGlobal ["ItemSodaOrangeSherbet", 2];
_box1 additemcargoGlobal ["optic_ACO_grn", 1];
_box1 additemcargoGlobal ["U_O_GhillieSuit", 1];
_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
diag_log "made a crate";
sleep 2000; //Number in sec. for how long the heli crash and loot crate will stay, Remove this and everything below 
deleteVehicle _box1;//for the crash sites to stay till server restart.
deleteVehicle _veh1;
deleteVehicle _fire;
