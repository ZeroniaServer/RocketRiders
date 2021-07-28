scoreboard players set @e[type=armor_stand,tag=Selection] servermode 0
tag @e[type=armor_stand,tag=Selection] remove ServerModeVoting
tag @e[type=armor_stand,tag=Selection] remove realms
tag @e[type=armor_stand,tag=Selection] remove SMCustom
tag @e[type=armor_stand,tag=Selection] remove noFullHotbarSound
fill -57 201 84 -70 201 72 air replace barrier
fill -57 198 84 -70 198 72 air replace blackstone
execute as @a run function achievements:roots
clear @a
function game:forcestop
execute as @e[type=armor_stand,tag=Selection,limit=1] store result score @s SetGamemode run scoreboard players get @e[type=armor_stand,tag=rr_normal,limit=1] gamemodeID
schedule function servermode:forceclear 3t append
function lobby:parkour/parkoursetup
function lobby:credits/stop
function arenaclear:unhidemodroom
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:globaldefaults
execute as @e[type=armor_stand,tag=Selection] run function modifiers:disablemodifiers
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshsigns
schedule function servermode:fixduel 2t append