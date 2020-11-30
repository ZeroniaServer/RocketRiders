scoreboard players set @e[tag=Selection,type=armor_stand] servermode 2
tag @e[tag=Selection,type=armor_stand] remove ServerModeVoting
tag @e[tag=Selection,type=armor_stand] add noYZELO
fill -57 201 84 -70 201 72 barrier replace air
fill -57 198 84 -70 198 72 blackstone replace air
execute as @a run function achievements:reset
execute as @e[tag=Selection,type=armor_stand] store result score @s SetGamemode run scoreboard players get @e[tag=rr_duel,limit=1] gamemodeID
clear @a
schedule function game:forcestop 2t append