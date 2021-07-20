#Antidupe check
execute if entity @e[type=armor_stand,tag=Selection,tag=!doStacking] store result score @s HasTrident run clear @s trident 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasTrident 0

#Title/giving
title @s[scores={HasTrident=1..},tag=!fullHotbar] actionbar {"text":"Trident repaired.","color":"light_purple"}
execute if entity @s[scores={HasTrident=1..},tag=!fullHotbar] at @s run playsound minecraft:block.grindstone.use master @s ~ ~ ~ 0.6 1
clear @s[scores={HasTrident=1..},tag=!fullHotbar] trident 1
title @s[scores={HasTrident=0},tag=!fullHotbar] actionbar {"text":"Trident obtained.","color":"light_purple"}
give @s[tag=!fullHotbar] trident{HideFlags:4,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:'[{"text":"Trident","color":"dark_purple","bold":true}]',Lore:['{"text":"Useful for strong close/ranged damage.","color":"gray"}','{"text":"When in water, automatically gains Riptide.","color":"gray"}','{"text":"Otherwise, the Trident contains Loyalty.","color":"gray"}']}} 1
tag @e[type=armor_stand,tag=Selection] add givenTrident