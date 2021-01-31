##Gives executor a Juggerbuster
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasJug run clear @s zombie_horse_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasJug 0

#Title/giving
title @s[scores={HasJug=1..},tag=!fullHotbar,tag=!BackJug] actionbar {"text":"Juggerbuster already obtained.","color":"aqua"}
title @s[scores={HasJug=0},tag=!fullHotbar,tag=!BackJug] actionbar {"text":"Juggerbuster obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasJug=0},tag=!fullHotbar] zombie_horse_spawn_egg{display:{Name:'[{"text":"[Heavy] ","color":"dark_red","bold":"true"},{"text":"Juggerbuster","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"32","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Chronos22","color":"gray"}','{"text":" ","color":"gray"}','{"text":"This is a Juggernaut-ShieldBuster hybrid.","color":"gray"}','{"text":"This missile has the power of a Juggernaut","color":"gray"}','{"text":"plus the ability to bust through a shield.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowJug']}} 1
give @s[team=Blue,scores={HasJug=0},tag=!fullHotbar] zombie_horse_spawn_egg{display:{Name:'[{"text":"[Heavy] ","color":"dark_red","bold":"true"},{"text":"Juggerbuster","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"32","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Chronos22","color":"gray"}','{"text":" ","color":"gray"}','{"text":"This is a Juggernaut-ShieldBuster hybrid.","color":"gray"}','{"text":"This missile has the power of a Juggernaut","color":"gray"}','{"text":"plus the ability to bust through a shield.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueJug']}} 1

#Game tracking
execute unless entity @s[tag=BackJug] run tag @e[tag=Selection,type=armor_stand] add givenJbust
execute unless entity @s[tag=BackJug] run tag @e[tag=Bot,type=armor_stand] add BotHasJug