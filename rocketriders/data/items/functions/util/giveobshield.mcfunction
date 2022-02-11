##Gives executor an Obsidian Shield
#Antidupe check
execute store result score @s HasObshield run clear @s enderman_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasObshield %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasObshield=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasObshield 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasObshield=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Obsidian Shield already obtained.","color":"aqua"}
execute if entity @s[scores={HasObshield=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Obsidian Shield already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasObshield=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Obsidian Shield obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasObshield=0},tag=!fullHotbar] enderman_spawn_egg{CustomModelData:2,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Obsidian Shield","color":"gold","bold":true}]',Lore:['{"text":"Spawns a Fireball that you can shoot or punch","color":"gray"}','{"text":"to spawn an Obsidian Shield. Stops all missiles.","color":"gray"}','{"text":"Break the central glass 3 times to destroy it.","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["YellowObshield"]}} 1
give @s[team=Blue,scores={HasObshield=0},tag=!fullHotbar] enderman_spawn_egg{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Obsidian Shield","color":"blue","bold":true}]',Lore:['{"text":"Spawns a Fireball that you can shoot or punch","color":"gray"}','{"text":"to spawn an Obsidian Shield. Stops all missiles.","color":"gray"}','{"text":"Break the central glass 3 times to destroy it.","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["BlueObshield"]}} 1

#Game tracking
tag @e[type=armor_stand,tag=Selection,tag=tetrisTime] add givenObshield