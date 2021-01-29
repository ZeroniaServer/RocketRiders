execute as @e[tag=Selection,type=armor_stand,scores={servermode=2}] run schedule function servermode:enabled 1t
scoreboard players set @e[tag=Selection,type=armor_stand] servermode 1
tag @e[tag=Selection,type=armor_stand] add noYZELO
tag @e[tag=Selection,type=armor_stand] add stopIfEmpty
tag @e[tag=Selection,type=armor_stand] remove realms
tag @e[tag=Selection,type=armor_stand] remove SMCustom
fill -57 201 84 -70 201 72 barrier replace air
fill -57 198 84 -70 198 72 blackstone replace air
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
# function servermode:forcenormal