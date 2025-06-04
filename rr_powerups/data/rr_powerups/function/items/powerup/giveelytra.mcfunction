#Antidupe check
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue store result score @s HasElytra run clear @s elytra 0
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow store result score @s HasElytra run clear @s elytra 0

#Title/giving
#Yellow
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.2 1
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[scores={HasElytra=1..}] run title @s actionbar {"text":"Elytra repaired.","color":"aqua"}
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[scores={HasElytra=1..}] run tag @s add DelayActionbar
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[scores={HasElytra=1..}] run scoreboard players set @s actionbardelay 0
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[scores={HasElytra=1..}] run clear @s elytra
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue run title @s[scores={HasElytra=0}] title ["",{"text":" "}]
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue run title @s[scores={HasElytra=0}] subtitle ["",{"text":"Elytra ","color":"dark_purple","italic":true,"bold":true},{"text":"obtained. ","color":"light_purple"},{"text":"Jump to activate!","color":"light_purple","italic":true}]
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue run loot replace entity @s armor.chest loot items:misc/elytra

#BLUE
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.2 1
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[scores={HasElytra=1..}] run title @s actionbar {"text":"Elytra repaired.","color":"aqua"}
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[scores={HasElytra=1..}] run tag @s add DelayActionbar
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[scores={HasElytra=1..}] run scoreboard players set @s actionbardelay 0
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[scores={HasElytra=1..}] run clear @s elytra
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow run title @s[scores={HasElytra=0}] title ["",{"text":" "}]
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow run title @s[scores={HasElytra=0}] subtitle ["",{"text":"Elytra ","color":"dark_purple","italic":true,"bold":true},{"text":"obtained. ","color":"light_purple"},{"text":"Jump to activate!","color":"light_purple","italic":true}]
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow run loot replace entity @s armor.chest loot items:misc/elytra

tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenElytra