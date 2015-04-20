diag_log "Spawning Heli Crash";


_marker = createMarker ["Marker1",[14028.2,3308.2]];// Set to where you want your spawn radius center to be.
_marker setMarkerType "Empty"; //set "Empty" To "mil_dot" if you want markers around where helis will be.
//"Marker1" setMarkerText "Heli Site";
//"Marker1" setMarkerColor "ColorOrange";



_n1 = floor(random 7);
if (_n1 == 0) then
	{
		execVM "x\addons\a3_epoch_missions\mission\crates\box1.sqf";
	};

if (_n1 == 1) then
	{
		execVM "x\addons\a3_epoch_missions\mission\crates\box2.sqf";
	};

if (_n1 == 2) then
	{
		execVM "x\addons\a3_epoch_missions\mission\crates\box3.sqf";
	};

if (_n1 == 3) then
	{
		execVM "x\addons\a3_epoch_missions\mission\crates\box4.sqf";
	};

if (_n1 == 4) then
	{
		execVM "x\addons\a3_epoch_missions\mission\crates\box5.sqf";
	};
	
if (_n1 == 5) then
	{
		execVM "x\addons\a3_epoch_missions\mission\crates\box6.sqf";
	};

if (_n1 == 6) then
	{
		execVM "x\addons\a3_epoch_missions\mission\crates\box7.sqf";
	};
//CLEAN Up			
sleep 120;

deleteMarker "Marker1"; 



sleep 480;//Number in sec. till next heli crash will spawn. Make sure to keep in mind how long you have set each crash site
          //to stick around. If you set crash site to stay till restart. You may want to raise this number.


execVM "x\addons\a3_epoch_missions\mission\call_missions.sqf";
