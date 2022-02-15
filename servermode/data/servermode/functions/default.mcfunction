tag @e[type=armor_stand,tag=Selection] add SMSwitch
scoreboard players set @e[type=armor_stand,tag=Selection] PlayerCap 6
scoreboard players set @e[type=armor_stand,tag=Selection] servermode 0
tag @e[type=armor_stand,tag=Selection] remove ServerModeVoting
tag @e[type=armor_stand,tag=Selection] remove realms
tag @e[type=armor_stand,tag=Selection] remove SMCustom
tag @e[type=armor_stand,tag=Selection] remove noFullHotbarSound
fill -57 201 84 -70 201 72 air replace barrier
fill -57 198 84 -70 198 72 air replace blackstone
execute as @a run function achievements:roots
clear @a
schedule function game:forcestop 2t append
execute as @e[type=armor_stand,tag=Selection,limit=1] store result score @s SetGamemode run scoreboard players get @e[type=armor_stand,tag=rr_normal,limit=1] gamemodeID
# schedule function servermode:forceclear 3t append
function lobby:parkour/parkoursetup
function lobby:credits/stop
function arenaclear:unhidemodroom
schedule function servermode:fixduel 2t append