title @s[scores={HasObshield=1..},tag=!fullHotbar] actionbar {"text":"Obsidian Shield already obtained.","color":"aqua"}
title @s[scores={HasObshield=0},tag=!fullHotbar] actionbar {"text":"Obsidian Shield obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasObshield=0},tag=!fullHotbar] enderman_spawn_egg{id:"minecraft:area_effect_cloud",Duration:100,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Obsidian Shield","color":"gold","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Evtema3","color":"gray"}','{"text":" ","color":"gray"}','{"text":"Spawns a Fireball that you can shoot or punch","color":"gray"}','{"text":"to spawn an Obsidian Shield. Stops all missiles.","color":"gray"}','{"text":"Break the central glass 3 times to destroy it.","color":"gray"}']},EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:['YellowObshield'],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}} 1
give @s[team=Blue,scores={HasObshield=0},tag=!fullHotbar] enderman_spawn_egg{id:"minecraft:area_effect_cloud",Duration:100,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Obsidian Shield","color":"blue","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Evtema3","color":"gray"}','{"text":" ","color":"gray"}','{"text":"Spawns a Fireball that you can shoot or punch","color":"gray"}','{"text":"to spawn an Obsidian Shield. Stops all missiles.","color":"gray"}','{"text":"Break the central glass 3 times to destroy it.","color":"gray"}']},EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:['BlueObshield'],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}} 1

tag @e[tag=Selection] add givenObshield