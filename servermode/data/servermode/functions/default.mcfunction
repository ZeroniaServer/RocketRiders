scoreboard players set @e[tag=Selection,type=armor_stand] servermode 0
tag @e[tag=Selection,type=armor_stand] remove noYZELO
tag @e[tag=Selection,type=armor_stand] remove stopIfEmpty
tag @e[tag=Selection,type=armor_stand] remove ServerModeVoting
tag @e[tag=Selection,type=armor_stand] remove noAchievements
tag @e[tag=Selection,type=armor_stand] remove realms
fill -57 201 84 -70 201 72 air replace barrier
fill -57 198 84 -70 198 72 air replace blackstone
execute as @a run function achievements:roots
clear @a
function game:forcestop
function lobby:parkour/parkoursetup
function lobby:credits/stop
execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshcustomizer
execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshsigns