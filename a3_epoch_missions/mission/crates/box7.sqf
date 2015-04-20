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
_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
_box1 additemcargoGlobal ["ItemCompass", 1];
_box1 additemcargoGlobal ["FirstAidKit", 1];
_box1 additemcargoGlobal ["CinderBlocks", 16];
_box1 additemcargoGlobal ["ChainSaw", 1];
_box1 additemcargoGlobal ["ItemMixOil", 2];
_box1 additemcargoGlobal ["jerrycan_epoch", 2];
_box1 additemcargoGlobal ["EnergyPack", 4];
_box1 additemcargoGlobal ["MortarBucket", 6];
_box1 additemcargoGlobal ["ItemCorrugated", 6];
_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];

diag_log "made a crate";
sleep 2000; //Number in sec. for how long the heli crash and loot crate will stay, Remove this and everything below 
deleteVehicle _box1;//for the crash sites to stay till server restart.
deleteVehicle _veh1;
deleteVehicle _fire;