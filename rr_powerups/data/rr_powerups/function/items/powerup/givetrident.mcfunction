#Antidupe check
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!doStacking] store result score @s HasTrident run clear @s trident 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasTrident 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasTrident=1..},tag=!itemDeducted] actionbar {"text":"Trident repaired.","color":"light_purple"}
execute if entity @s[scores={HasTrident=1..},tag=!itemDeducted] at @s run playsound minecraft:block.grindstone.use master @s ~ ~ ~ 0.6 1
title @s[tag=itemDeducted] actionbar {"text":"Trident repaired.","color":"light_purple"}
execute if entity @s[tag=itemDeducted] at @s run playsound minecraft:block.grindstone.use master @s ~ ~ ~ 0.6 1
clear @s[scores={HasTrident=1..}] trident 1
tag @s[scores={HasTrident=1..}] remove fullHotbar
title @s[scores={HasTrident=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Trident obtained.","color":"light_purple"}
give @s[tag=!fullHotbar] minecraft:trident[damage=242,enchantments={"minecraft:impaling":2,"minecraft:loyalty":10},custom_name='[{"text":"Trident","color":"dark_purple","bold":true}]',lore=['{"text":"Useful for strong close/ranged damage.","color":"gray"}','{"text":"When in water, automatically gains Riptide.","color":"gray"}','{"text":"Otherwise, the Trident contains Loyalty.","color":"gray"}']] 1
tag @e[x=0,type=armor_stand,tag=Selection,tag=tetrisTime] add givenTrident