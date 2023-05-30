##Gives executor a Splash
#Antidupe check
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!doStacking] store result score @s HasSplash run clear @s lingering_potion{Potion:"minecraft:water"} 0
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasSplash 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasSplash=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Splash already obtained.","color":"aqua"}
execute if entity @s[scores={HasSplash=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Splash already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasSplash=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Splash obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasSplash=0},tag=!fullHotbar] lingering_potion{Potion:"minecraft:water",display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Splash","color":"gold","bold":true}]',Lore:['{"text":"Spawns a brief water source where it","color":"gray"}','{"text":"lands. Used to restart missiles, reduce","color":"gray"}','{"text":"explosions, or break your fall.","color":"gray"}']},HideFlags:63} 1
give @s[team=Blue,scores={HasSplash=0},tag=!fullHotbar] lingering_potion{Potion:"minecraft:water",display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Splash","color":"blue","bold":true}]',Lore:['{"text":"Spawns a brief water source where it","color":"gray"}','{"text":"lands. Used to restart missiles, reduce","color":"gray"}','{"text":"explosions, or break your fall.","color":"gray"}']},HideFlags:63} 1

#Game tracking
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=tetrisTime] add givenSplash