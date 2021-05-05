##Gives executor a Blue Surprise Egg
#Antidupe check
execute store result score @s HasSurprise run clear @s squid_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasSurprise %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasSurprise=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasSurprise 0
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] as @s[scores={HasSurprise=1..3},tag=fullHotbar] run tag @s remove fullHotbar

#Title/giving
title @s[scores={HasSurprise=3..},tag=!fullHotbar] actionbar {"text":"Surprise Egg already obtained.","color":"aqua"}
execute as @s[scores={HasSurprise=3..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 1
title @s[scores={HasSurprise=..2},tag=!fullHotbar] actionbar {"text":"Surprise Egg obtained.","color":"aqua"}
give @s[team=Blue,scores={HasSurprise=..2},tag=!fullHotbar] squid_spawn_egg{display:{Name:'[{"text":"[???] ","color":"light_purple","bold":"true"},{"text":"Surprise Egg","color":"blue","bold":"true"}]',Lore:['{"text":"Wonder what it spawns?","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['BlueSurprise','surprising']}} 1