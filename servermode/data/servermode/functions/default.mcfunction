scoreboard players set @e[tag=Selection,type=armor_stand] servermode 0
tag @e[tag=Selection,type=armor_stand] remove noYZELO
tag @e[tag=Selection,type=armor_stand] remove stopIfEmpty
tag @e[tag=Selection,type=armor_stand] remove ServerModeVoting
tag @e[tag=Selection,type=armor_stand] remove realms
tag @e[tag=Selection,type=armor_stand] remove SMCustom
fill -57 201 84 -70 201 72 air replace barrier
fill -57 198 84 -70 198 72 air replace blackstone
execute as @a run function achievements:roots
clear @a
function game:forcestop
execute as @e[tag=Selection,type=armor_stand,limit=1] store result score @s SetGamemode run scoreboard players get @e[tag=rr_normal,limit=1] gamemodeID
schedule function arenaclear:forceareaclear 2t append
function lobby:parkour/parkoursetup
function lobby:credits/stop
execute as @e[tag=Selection,type=armor_stand] run function arenaclear:globaldefaults
execute as @e[tag=Selection,type=armor_stand] run function modifiers:disablemodifiers
execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshcustomizer
execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshsigns