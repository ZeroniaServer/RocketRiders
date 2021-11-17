#Antidupe check
execute store result score @s HasFireball run clear @s blaze_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasFireball %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasFireball=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasFireball 0

#Title/giving
title @s[scores={HasFireball=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Cluster Fireball already obtained.","color":"aqua"}
execute if entity @s[scores={HasFireball=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasFireball=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Cluster Fireball obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasFireball=0},tag=!fullHotbar] blaze_spawn_egg{CustomModelData:2,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Cluster Fireball","color":"gold","bold":true}]',Lore:['{"text":"Spawns a cluster of Fireballs. Punch or","color":"gray"}','{"text":"shoot Fireballs to quickly blow up","color":"gray"}','{"text":"missiles, blocks, or enemy players.","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["YellowFireball"]},Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:7} 1
give @s[team=Blue,scores={HasFireball=0},tag=!fullHotbar] blaze_spawn_egg{CustomModelData:2,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Cluster Fireball","color":"blue","bold":true}]',Lore:['{"text":"Spawns a cluster of Fireballs. Punch or","color":"gray"}','{"text":"shoot Fireballs to quickly blow up","color":"gray"}','{"text":"missiles, blocks, or players.","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["BlueFireball"]},Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:7} 1

tag @e[type=armor_stand,tag=Selection] add givenFireball