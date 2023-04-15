##Gives executor a Blue Surprise Egg
#Antidupe check
execute store result score @s[tag=!itemDeducted] HasSurprise run clear @s squid_spawn_egg 0
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasSurprise %= 64 CmdData
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasSurprise=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasSurprise 0
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!doStacking] if entity @s[scores={HasSurprise=1..3},tag=fullHotbar] run tag @s remove fullHotbar

#Title/giving
title @s[scores={HasSurprise=3..},tag=!fullHotbar,tag=!BackSurprise] actionbar {"text":"Surprise Egg already obtained.","color":"aqua"}
execute if entity @s[scores={HasSurprise=3..},tag=!fullHotbar,tag=!BackSurprise] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasSurprise=..2},tag=!fullHotbar,tag=!BackSurprise] actionbar {"text":"Surprise Egg obtained.","color":"aqua"}
loot give @s[team=Blue,scores={HasSurprise=..2},tag=!fullHotbar] loot items:surprise/all
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasSurprise=..2},tag=!fullHotbar] ~ ~ ~ 0.25 2