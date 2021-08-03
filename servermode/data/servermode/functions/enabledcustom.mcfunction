scoreboard players set @e[type=armor_stand,tag=Selection] servermode 0
tag @e[type=armor_stand,tag=Selection] add stopIfEmpty
tag @e[type=armor_stand,tag=Selection] add noYZELO
tag @e[type=armor_stand,tag=Selection] remove ServerModeVoting
tag @e[type=armor_stand,tag=Selection] remove realms
tag @e[type=armor_stand,tag=Selection] remove Repeat
scoreboard players set @e[type=armor_stand,tag=Selection] RepeatSettings 1
fill -57 201 84 -70 201 72 air replace barrier
fill -57 198 84 -70 198 72 air replace blackstone
execute as @a run function achievements:reset
clear @a
kill @e[type=armor_stand,tag=ParkourLB]
kill @e[type=area_effect_cloud,tag=ParkourLB]
setblock -31 190 17 air
setblock -32 190 17 air
setblock -31 190 16 air
setblock -31 191 17 air
setblock -31 190 18 air
setblock -30 190 17 air
setblock -31 189 17 air
execute as @e[type=armor_stand,tag=Selection] run function lobby:credits/stop
fill -29 196 22 -33 196 22 air
schedule function game:forcestop 2t append
execute as @e[type=armor_stand,tag=Selection,limit=1] store result score @s SetGamemode run scoreboard players get @e[type=armor_stand,tag=rr_normal,limit=1] gamemodeID
# schedule function servermode:forceclear 3t append
function arenaclear:unhidemodroom
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:globaldefaults
execute as @e[type=armor_stand,tag=Selection] run function modifiers:disablemodifiers
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshsigns
tag @e[type=armor_stand,tag=Selection] add SMActive
tag @e[type=armor_stand,tag=Selection] add SMCustom