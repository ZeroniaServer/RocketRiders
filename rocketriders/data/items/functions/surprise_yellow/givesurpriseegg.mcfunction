##Gives executor a Yellow Surprise Egg
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasSurprise run clear @s cod_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasSurprise 0

#If player already has a valid amount of arrows then they technically don't have a full hotbar
execute as @s[scores={HasSurprise=1..3},tag=fullHotbar] if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] run tag @s remove fullHotbar

#Title/giving
title @s[scores={HasSurprise=3..},tag=!fullHotbar] actionbar {"text":"Surprise Egg already obtained.","color":"aqua"}
title @s[scores={HasSurprise=..2},tag=!fullHotbar] actionbar {"text":"Surprise Egg obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasSurprise=..2},tag=!fullHotbar] cod_spawn_egg{display:{Name:'[{"text":"[???] ","color":"light_purple","bold":"true"},{"text":"Surprise Egg","color":"gold","bold":"true"}]',Lore:['{"text":"Wonder what it spawns?","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['YellowSurprise','surprising']}} 1