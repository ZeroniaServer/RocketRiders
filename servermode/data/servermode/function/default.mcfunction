tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add SMSwitch
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] PlayerCap 6
scoreboard players reset * servermode
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] servermode 0
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function game:tipreset
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ServerModeVoting
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove realms
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SMCustom
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove noFullHotbarSound
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] modifierID 0
fill -57 201 84 -70 201 72 air replace barrier
fill -57 198 84 -70 198 72 air replace blackstone
execute as @a[x=0] run function achievements:roots
clear @a
schedule function game:forcestop 2t append
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] store result score @s SetGamemode run scoreboard players get @e[x=0,type=armor_stand,tag=rr_normal,limit=1] gamemodeID
# schedule function servermode:forceclear 3t append
function lobby:parkour/parkoursetup
function lobby:credits/stop
function arenaclear:unhidemodroom
schedule function servermode:fixduel 2t append