#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasTrident run clear @s tipped_arrow 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasTrident 0

#Title/giving
title @s[scores={HasTrident=1..},tag=!fullHotbar] actionbar {"text":"Trident already obtained.","color":"light_purple"}
title @s[scores={HasTrident=0},tag=!fullHotbar] actionbar {"text":"Trident obtained.","color":"light_purple"}
give @s[scores={HasTrident=0},tag=!fullHotbar] trident{HideFlags:4,Damage:242,Enchantments:[{id:'minecraft:impaling',lvl:2},{id:'minecraft:loyalty',lvl:10},{id:'minecraft:channeling',lvl:1}],display:{Name:'[{"text":"Trident","color":"dark_purple","bold":"true"}]',Lore:['{"text":"Useful for strong close/ranged damage.","color":"gray"}','{"text":"When in water, automatically gains Riptide.","color":"gray"}','{"text":"Otherwise, the Trident contains Loyalty.","color":"gray"}']}} 1
tag @e[tag=Selection,type=armor_stand] add givenTrident