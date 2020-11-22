##Gives executor an Obsidian Shield
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasObshield run clear @s enderman_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasObshield 0

#Title/giving
title @s[scores={HasObshield=1..},tag=!fullHotbar] actionbar {"text":"Obsidian Shield already obtained.","color":"aqua"}
title @s[scores={HasObshield=0},tag=!fullHotbar] actionbar {"text":"Obsidian Shield obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasObshield=0},tag=!fullHotbar] enderman_spawn_egg{display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Obsidian Shield","color":"gold","bold":"true"}]',Lore:['{"text":"Spawns a Fireball that you can shoot or punch","color":"gray"}','{"text":"to spawn an Obsidian Shield. Stops all missiles.","color":"gray"}','{"text":"Break the central glass 3 times to destroy it.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['YellowObshield']}} 1
give @s[team=Blue,scores={HasObshield=0},tag=!fullHotbar] enderman_spawn_egg{display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Obsidian Shield","color":"blue","bold":"true"}]',Lore:['{"text":"Spawns a Fireball that you can shoot or punch","color":"gray"}','{"text":"to spawn an Obsidian Shield. Stops all missiles.","color":"gray"}','{"text":"Break the central glass 3 times to destroy it.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['BlueObshield']}} 1

#Game tracking
tag @e[tag=Selection,type=armor_stand] add givenObshield