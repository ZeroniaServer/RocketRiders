title @s[tag=Infinity] actionbar [{"text":"Infinity Saber timer reset to ","color":"light_purple"},{"text":"30 seconds.","color":"red"}]
tag @s[tag=Infinity] add DelayActionbar
scoreboard players set @s[tag=Infinity] actionbardelay 0
title @s[tag=!Infinity] title [{"text":" "}]
title @s[tag=!Infinity] subtitle ["",{"text":"Infinity Saber:","color":"dark_purple","italic":true,"bold":true},{"text":" Lasts for ","color":"light_purple","italic":true},{"text":"30 seconds.","color":"red"}]
execute store result score @s HasArrows run clear @s arrow 0
give @s[scores={HasArrows=0},tag=fullOffhand] arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'}} 1
item replace entity @s[scores={HasArrows=0},tag=!fullOffhand] weapon.offhand with arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'}} 1
execute if entity @s[scores={HasArrows=0},tag=!fullOffhand] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
clear @s[tag=!Infinity] bow
give @s[tag=!Infinity] bow{display:{Name:'{"translate":"Infinity Saber","color":"dark_purple","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1},{id:"sharpness",lvl:5},{id:"infinity",lvl:1}]}
tag @s[tag=!Infinity] add Infinity
tag @e[type=armor_stand,tag=Selection] add givenInfinity
scoreboard players set $infinity PowerupDisplay 30
scoreboard players set $infinity powerupcount 0
execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5