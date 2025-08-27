#Antidupe check
execute if entity @s[team=Yellow] if predicate custom:canopy_nearblue run tag @s remove wearing_elytra
execute if entity @s[team=Blue] if predicate custom:canopy_nearyellow run tag @s remove wearing_elytra

#Title/giving
#Yellow
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.2 1
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[tag=wearing_elytra] run title @s actionbar {"text":"Elytra repaired.","color":"aqua"}
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[tag=wearing_elytra] run tag @s add DelayActionbar
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[tag=wearing_elytra] run scoreboard players set @s actionbardelay 0
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[tag=wearing_elytra] run clear @s elytra
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue run title @s[tag=!wearing_elytra] title ["",{"text":" "}]
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue run title @s[tag=!wearing_elytra] subtitle ["",{"text":"Elytra ","color":"dark_purple","italic":true,"bold":true},{"text":"obtained. ","color":"light_purple"},{"text":"Jump to activate!","color":"light_purple","italic":true}]
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue run function custom:equip_elytra

#BLUE
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.2 1
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[tag=wearing_elytra] run title @s actionbar {"text":"Elytra repaired.","color":"aqua"}
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[tag=wearing_elytra] run tag @s add DelayActionbar
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[tag=wearing_elytra] run scoreboard players set @s actionbardelay 0
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[tag=wearing_elytra] run clear @s elytra
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow run title @s[tag=!wearing_elytra] title ["",{"text":" "}]
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow run title @s[tag=!wearing_elytra] subtitle ["",{"text":"Elytra ","color":"dark_purple","italic":true,"bold":true},{"text":"obtained. ","color":"light_purple"},{"text":"Jump to activate!","color":"light_purple","italic":true}]
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow run function custom:equip_elytra

tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenElytra