execute unless score @e[type=armor_stand,tag=Selection,limit=1] servermode matches 2 run schedule function game:forcestop 2t append
scoreboard players set @e[type=armor_stand,tag=Selection] servermode 2
tag @e[type=armor_stand,tag=Selection] add noYZELO
tag @e[type=armor_stand,tag=Selection] add stopIfEmpty
tag @e[type=armor_stand,tag=Selection] remove ServerModeVoting
tag @e[type=armor_stand,tag=Selection] remove realms
tag @e[type=armor_stand,tag=Selection] remove SMCustom
tag @e[type=armor_stand,tag=Selection] remove Repeat
scoreboard players set @e[type=armor_stand,tag=Selection] RepeatSettings 1
fill -57 201 84 -70 201 72 barrier replace air
fill -57 198 84 -70 198 72 blackstone replace air
execute as @a run function achievements:reset
function game:forcestop
execute as @e[type=armor_stand,tag=Selection] store result score @s SetGamemode run scoreboard players get @e[type=armor_stand,tag=rr_duel,limit=1] gamemodeID
tag @e[type=armor_stand,tag=Selection] add duelLast
tag @e[type=armor_stand,tag=Selection] add saberMode
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
function lobby:credits/stop
function arenaclear:hidemodroom
fill -29 196 22 -33 196 22 air