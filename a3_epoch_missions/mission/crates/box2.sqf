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
_box1 addWeaponCargoGlobal ["hgun_P07_F", 2];
_box1 addWeaponCargoGlobal ["arifle_MXC_Black_F", 1];
_box1 addWeaponCargoGlobal ["arifle_Katiba_ACO_F", 2];
_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 7];
_box1 addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer", 6];
_box1 additemcargoGlobal ["ItemGPS", 2];
_box1 additemcargoGlobal ["Binocular", 2];
_box1 additemcargoGlobal ["FirstAidKit", 4];
_box1 additemcargoGlobal ["WhiskeyNoodle", 3];
_box1 additemcargoGlobal ["muzzle_snds_H", 1];
_box1 additemcargoGlobal ["ItemKiloHemp", 2];
_box1 additemcargoGlobal ["scam_epoch", 2];
_box1 additemcargoGlobal ["ColdPack", 1];
_box1 additemcargoGlobal ["muzzle_snds_L", 1];
_box1 additemcargoGlobal ["VehicleRepair", 1];
_box1 additemcargoGlobal ["U_O_CombatUniform_ocamo", 1];
_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];sleep 1500;
diag_log "made a crate";
sleep 2000; //Number in sec. for how long the heli crash and loot crate will stay, Remove this and everything below 
deleteVehicle _box1;//for the crash sites to stay till server restart.
deleteVehicle _veh1;
deleteVehicle _fire;
