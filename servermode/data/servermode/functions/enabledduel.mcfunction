scoreboard players set @e[tag=Selection,type=armor_stand] servermode 2
tag @e[tag=Selection,type=armor_stand] add noYZELO
tag @e[tag=Selection,type=armor_stand] add stopIfEmpty
tag @e[tag=Selection,type=armor_stand] remove ServerModeVoting
tag @e[tag=Selection,type=armor_stand] remove realms
tag @e[tag=Selection,type=armor_stand] remove SMCustom
tag @e[tag=Selection,type=armor_stand] remove Repeat
scoreboard players set @e[tag=Selection,type=armor_stand] RepeatSettings 1
fill -57 201 84 -70 201 72 barrier replace air
fill -57 198 84 -70 198 72 blackstone replace air
execute as @a run function achievements:reset
function game:forcestop
execute as @e[tag=Selection,type=armor_stand] store result score @s SetGamemode run scoreboard players get @e[tag=rr_duel,limit=1] gamemodeID
clear @a
schedule function game:forcestop 2t append
kill @e[tag=ParkourLB]
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