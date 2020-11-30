scoreboard players set @e[tag=Selection,type=armor_stand] servermode 2
schedule function rr_duel:install 1t append
function game:forcestop
tag @e[tag=Selection,type=armor_stand] remove ServerModeVoting
fill -57 201 84 -70 201 72 barrier replace air
fill -57 198 84 -70 198 72 blackstone replace air
execute as @a run function achievements:reset