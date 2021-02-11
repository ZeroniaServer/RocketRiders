scoreboard players set @e[tag=Selection,type=armor_stand] servermode 0
tag @e[tag=Selection,type=armor_stand] add stopIfEmpty
tag @e[tag=Selection,type=armor_stand] add noYZELO
tag @e[tag=Selection,type=armor_stand] remove ServerModeVoting
tag @e[tag=Selection,type=armor_stand] remove realms
tag @e[tag=Selection,type=armor_stand] remove Repeat
scoreboard players set @e[tag=Selection,type=armor_stand] RepeatSettings 1
fill -57 201 84 -70 201 72 air replace barrier
fill -57 198 84 -70 198 72 air replace blackstone
execute as @a run function achievements:reset
clear @a
kill @e[tag=ParkourLB]
setblock -31 190 17 air
setblock -32 190 17 air
setblock -31 190 16 air
setblock -31 191 17 air
setblock -31 190 18 air
setblock -30 190 17 air
setblock -31 189 17 air
execute as @e[tag=Selection,type=armor_stand] run function lobby:credits/stop
fill -29 196 22 -33 196 22 air
function game:forcestop
execute as @e[tag=Selection,type=armor_stand,limit=1] store result score @s SetGamemode run scoreboard players get @e[tag=rr_normal,limit=1] gamemodeID
schedule function arenaclear:forceareaclear 2t append
function arenaclear:unhidemodroom
execute as @e[tag=Selection,type=armor_stand] run function arenaclear:globaldefaults
execute as @e[tag=Selection,type=armor_stand] run function modifiers:disablemodifiers
execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshcustomizer
execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshsigns
tag @e[tag=Selection,type=armor_stand] add SMActive
tag @e[tag=Selection,type=armor_stand] add SMCustom