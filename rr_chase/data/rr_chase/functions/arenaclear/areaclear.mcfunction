#remove join cancel from joinpads
tag @e[tag=CancelJoin,type=area_effect_cloud] remove CancelJoin
function game:uncancelyellow
scoreboard players reset @e[tag=rr_chase,type=armor_stand] PlayerCap

#reset pregame queue
execute if entity @e[tag=Selection,tag=!chaseEnabled,type=armor_stand] run setblock -95 202 95 air
execute if entity @e[tag=Selection,tag=!chaseEnabled,type=armor_stand] run fill -88 202 97 -102 194 97 obsidian
execute if entity @e[tag=Selection,tag=!chaseEnabled,type=armor_stand] run fill -88 202 59 -102 194 59 obsidian
execute if entity @e[tag=Selection,tag=!chaseEnabled,type=armor_stand] run fill -89 201 59 -94 195 59 nether_portal[axis=x]
execute if entity @e[tag=Selection,tag=!chaseEnabled,type=armor_stand] run fill -96 201 59 -101 195 59 nether_portal[axis=x]
execute if entity @e[tag=Selection,tag=!chaseEnabled,type=armor_stand] run fill -89 201 97 -94 195 97 nether_portal[axis=x]
execute if entity @e[tag=Selection,tag=!chaseEnabled,type=armor_stand] run fill -96 201 97 -101 195 97 nether_portal[axis=x]