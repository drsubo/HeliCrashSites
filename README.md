# HeliCrashSites
Crash Site
THIS IS SET UP FOR BORNHOLM. SO THE MARKER LOCATIONS NEED TO BE CHANGED FOR DIFFERENT MAP
First i want to start by saying i am not very good at all this github stuff and setting it up so if its a little sketchy, im sorry.
So i included a packed up pbo set up for bornholm and ready to be dropped into @epochhive\addons and the same pbo unpacked so you can edit some things to suit your needs and make it work for different maps.

WHAT THIS DOES
This addon spawns heli crash sites randomly in a set circular radius. The size of the circle can be set to any size there for increasing the 
randomness of the crash site spawns. It also spawns them and deletes them at different times so there is always new heli sites
in different locations. This can also be changes so that they stick around till restart. There is a crate of loot that spawn at the site.
the loot can be changed to your liking.

INSTALL.
simple to install. Just drop the a3_epoch_missions.pbo into your @epochhive\addons folder and bam, your good to go.

CONFIG.
So i want to say this was a script i whipped up real quick using a old addon\script i made awhile back(my first one). So its not written 
the best, to say the least. So there are a few places your going to want to change. First ones being located in a3_epoch_missions\mission\
all the missions.sqf-missions9.sqf need to be edited to fit your map. They are currently set to Bornholm. At the top of each of these you
will see _marker = createMarker ["Marker1",[4146.9,16764.5]];  this is where your spawn radius center will be. Change this to any
where you would like. This isnt where the heli crash will spawn but just be your center radius. So you are going to want to change this
part in each one of the mission.sqf files, 1-9. After that the next thing you can change is the time in between the the heli crash site spawns. 
its at the bottom of the file.

deleteMarker "Marker1"; 
sleep 480;
execVM "x\addons\a3_epoch_missions\mission\call_missions.sqf";

you want to change the "sleep 480;" part to how ever long in sec you want them to spawn apart. its set to 8 min right now so after 32 min 
of server running there will be 4 crash sites around the map.
Make sure to change this in all the sqf files again like before, 1-9.

The next set of settings will be located in a3_epoch_missions\mission\crates you are going to want to edit box1.sqf-box7sqf. 
In those is where you set the loot and the radius of the spawning area. Near the top you will see _aadis = [10,50,200,400,650] call BIS_fnc_selectRandom;
this is how big you radius will be. you can can add in numbers ex. 1000,2000,3000 to increase the radius. So say you have 3000 
as your highest number then your heli will spawn anywhere within a 3000m of the center we set in the previous mission.sqf files.
Below that you can see the loot that will spawn. Feel free to add or change the items listed there. just make sure to use the
correct call for the right item. addWeaponCargoGlobal for weapons, addMagazineCargoGlobal for ammo, additemcargoGlobal for scopes, food and so on
addbackpackcargoGlobal for backpacks. Simple right.

The last thing youll want to change in these files is the sleep 2000; at the bottom. This is number in sec. that the crash sites
and loot will stick around. if you want them to stay till restart then delete that and everything under it.

Like i said before, Make sure you change each of these things in every .sqf each .sqf has the same settings and they all need
to be changed in each file. IMPORTANT

So like i said this is written poorly and there are a lot of places you have to edit but it works for now. Im sure there are many of 
you out there that can take and edit this into something much better. I cant wait to see how some of you guys fix this up. If theres anything
i missed let me know and if you have any questions feel free to hit me up on the epoch forums or something.




